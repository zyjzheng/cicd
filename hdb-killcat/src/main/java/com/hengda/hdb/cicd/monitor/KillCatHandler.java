package com.hengda.hdb.cicd.monitor;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import lombok.extern.log4j.Log4j2;

@Log4j2
public class KillCatHandler {

	private static final String KILL_CAT_SHELL = "ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no %s@%s \"kill -9 \\`ps aux| grep %s | grep -v grep|awk '{print \\$2 }'\\` 2>&1\"";
	private static KillCatHandler killCatHandler = new KillCatHandler();
	private static Properties serviceTomcatMapper;
	private static Properties ipUsernameMapper;
	private List<String> killedTomcat = new ArrayList<>();

	private KillCatHandler() {

	}

	public void killCat(String service, String ip) {
		log.info("+++++kill+++++ service " + service + " in " + ip);
		String ipKey = ip;
		String username = ipUsernameMapper.getProperty(ipKey);
		log.info("serivce:" + service);
		log.info("ip:" + ip);
		String tomcatName = serviceTomcatMapper.getProperty(service);
		log.info("tomcat:" + tomcatName);
		if (username != null) {
			String shell = String.format(KILL_CAT_SHELL, username, ip, tomcatName);
			String killedTomcatKey = ip + ":" + tomcatName;
			if (!killedTomcat.contains(killedTomcatKey)) {
				log.info("kill service" + killedTomcatKey);
				int result = execShell(shell);
				if (result == 0) {
					killedTomcat.add(killedTomcatKey);
				}else{
					log.error("kill service " + killedTomcatKey + " failed" );
				}
			}else{
				log.info(killedTomcatKey + " has been killed");
			}
		}else{
			log.error("no user for " + ip);
		}
	}

	public void clearKilledTomcat() {
		killedTomcat.clear();
	}

	public int execShell(String cmd) {
		try {
			List<String> cmds = new ArrayList<>();
			cmds.add("/bin/sh");
			cmds.add("-c");
			cmds.add(cmd);
			log.info(cmd);
			Runtime rt = Runtime.getRuntime();
			Process proc = rt.exec(cmds.toArray(new String[] {}));
			InputStream stdin = proc.getInputStream();
			InputStreamReader iop = new InputStreamReader(stdin);
			BufferedReader brOp = new BufferedReader(iop);
			String line = null;
			while ((line = brOp.readLine()) != null)
				log.info(line);
			int exitVal = proc.waitFor();
			log.info("Process exitValue: " + exitVal);
			return exitVal;
		} catch (Throwable t) {
			t.printStackTrace();
			return 1;
		}

	}

	public static KillCatHandler getKillCatHandler(Properties services, Properties ips) {
		serviceTomcatMapper = services;
		ipUsernameMapper = ips;
		return killCatHandler;
	}

	public static void main(String[] args) {
		KillCatHandler kHandler = new KillCatHandler();
		kHandler.killCat("", "");
	}
}
