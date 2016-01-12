/**
 * AbstractZooKeeper.java
 * 版权所有(C) 2013 
 * 创建:cuiran 2013-01-16 14:59:44
 */
package com.hengda.hdb.cicd.monitor;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.CountDownLatch;

import org.apache.zookeeper.KeeperException;
import org.apache.zookeeper.WatchedEvent;
import org.apache.zookeeper.Watcher;
import org.apache.zookeeper.Watcher.Event.EventType;
import org.apache.zookeeper.Watcher.Event.KeeperState;
import org.apache.zookeeper.ZooKeeper;
import org.apache.zookeeper.data.Stat;

import lombok.extern.log4j.Log4j2;

@Log4j2
public class ServiceMonitor implements Watcher {
	//private static Logger log = Logger.getLogger(ServiceMonitor.class);

	//缓存时间
	 private static final int SESSION_TIME   = 2000;   
	 private static final String SERVICE_PATH = "/%s/%s/providers";
	 private ZooKeeper zooKeeper;
	 private CountDownLatch countDownLatch=new CountDownLatch(1);
	 private KillCatHandler handler ;

	 public void connect(String hosts, KillCatHandler killHandler) throws IOException, InterruptedException{   
	        zooKeeper = new ZooKeeper(hosts,SESSION_TIME,this);   
	        handler = killHandler;
	        countDownLatch.await();   
	  }   

	@Override
	public void process(WatchedEvent event) {
		// TODO Auto-generated method stub
		if(event.getState()==KeeperState.SyncConnected){
			countDownLatch.countDown();
			log.info("zookeeper connected");
		}
		if(event.getType() == EventType.NodeDeleted){
			String path = event.getPath();
			log.info("service instance failed." + path);
			String[] paths = path.split("/");
			int length = paths.length;
			if(length < 2){
				return;
			}
			String serviceName = paths[2];
			String provider = paths[4];
			
			String ip = getIpFromProvider(provider);
			log.info("will kill " + serviceName + " in " + ip);
			handler.killCat(serviceName, ip);
		}
	}
	
	private String getIpFromProvider(String provider) {
		// TODO Auto-generated method stub
		String[] paths = provider.split("%2F", 4);
		String ip = paths[2].split("%3A")[0];
		return ip;
	}

	public void addWatcher(String dubboGroup, String service) throws KeeperException, InterruptedException{   
		String service_path = String.format(SERVICE_PATH, dubboGroup,service);
		List<String> child = this.zooKeeper.getChildren(service_path, false);
		log.info("will monitor service" + service + ". instance" + child.toString());
		for (String provider : child) {
			String providerPath = service_path + "/" + provider;
			Stat result = this.zooKeeper.exists(providerPath, this);
			if(result == null){
				log.error("service " + service + ". "+ provider + " not existed");
				String ip = getIpFromProvider(provider);
				handler.killCat(service, ip);
			}
		}
	}
	
	public void close() throws InterruptedException{   
        zooKeeper.close();   
    }  
}
