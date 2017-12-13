class tomcat::config inherits tomcat {

	file{$::tomcat::config_path:
	content => template('tomcat/tomcat.conf.erb'),
	mode    => $::tomcat::mode,
	owner   => $::tomcat::owner,
	group   => $::tomcat::group,
	notify   => Service[$::tomcat::service_name],
}

}
