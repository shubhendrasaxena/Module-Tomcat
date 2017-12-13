class tomcat::params{

  case $::os['family'] {
	'Debian':{
	 $service_name = 'tomcat6'
   }
        'RedHat':{
         $service_name ='tomcat6' 
   }
}
 
	$user		= 'tomcat'
	$group		= 'tomcat'
	$packages	= ['tomcat6' , 'tomcat6-webapps']
	$config_path	= '/etc/tomcat6/tomcat6.conf' 
	$mode		= '0644'
	$owner		= 'tomcat'
	$service_state	= running
  	$tomcat_cfg_loaded = "1"
  	$java_home = "/usr/lib/jvm/jre"
 	$xms = "69m"
  	$xmx = "128m"
 	$maxpermsize = "128M"
	$java_opts = "-Xms${xms} -Xmx${xmx} -XX:MaxPermSize=${maxpermsize} -Djava.security.egd=file:/dev/./urandom"
	$catalina_base = "/usr/share/tomcat6"  
 	$catalina_home = "/usr/share/tomcat6"
	$jasper_home = "/usr/share/tomcat6"  
	$catalina_tmpdir = "/var/cache/tomcat6/temp" 
	$security_manager = "false"
	$shutdown_wait = "30"
	$shutdown_verbose = "false"
	$catalina_pid = "/var/run/tomcat6.pid"
}
