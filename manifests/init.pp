class tomcat(
  $xms            = $::tomcat::params::xms, 
  $xmx            = $::tomcat::params::xmx,
  $maxpermsize    = $::tomcat::params::maxpermsize,
  $user           = $::tomcat::params::user,
  $group          = $::tomcat::params::group, 
  $service_name   = $::tomcat::params::service_name,
  $service_state  = $::tomcat::params::service_state,
  $java_opts 	  = $::tomcat::params::java_opts,
) inherits tomcat::params{

#	notify { 'checkpoint_tomcat' :
#}
	include java::install
	include tomcat::install
        include tomcat::config
        include tomcat::service
}
