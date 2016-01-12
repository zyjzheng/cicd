package com.hengda.hdb.cicd.monitor;

import java.io.File;
import java.io.FileInputStream;
import java.util.Map;
import java.util.Properties;

import org.docopt.Docopt;

public class MonitorStarter {

	private static final String doc = "Monitor Starter.\n" + "\n" + "Usage:\n"
			+ " starter --zk=<zk> --group=<group> --s2t=<prop> --ip2user=<prop> \n";

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ServiceMonitor zkoperator = null;
		try {
			Map<String, Object> opts = new Docopt(doc).withVersion("Monitor Starter 0.0.1").parse(args);
			String s2t = opts.get("--s2t").toString();
			FileInputStream fis = new FileInputStream(new File(s2t));
			Properties s2tProperties = new Properties();
			s2tProperties.load(fis);
			fis.close();
			String ip2user = opts.get("--ip2user").toString();
			fis = new FileInputStream(new File(ip2user));
			Properties ip2userProperties = new Properties();
			ip2userProperties.load(fis);
			fis.close();
			String dubboGroup = opts.get("--group").toString();
			zkoperator = new ServiceMonitor();
			String zkHost = opts.get("--zk").toString();
			KillCatHandler kHandler = KillCatHandler.getKillCatHandler(s2tProperties, ip2userProperties);
			zkoperator.connect(zkHost, kHandler);

			while (true) {
				for (Object serviceName : s2tProperties.keySet()) {
					zkoperator.addWatcher(dubboGroup, serviceName.toString());
				}
				kHandler.clearKilledTomcat();
				Thread.sleep(5000);// 5秒
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (zkoperator != null) {
				try {
					zkoperator.close();
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

}
