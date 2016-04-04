class remote_syslog2 ($host, $port, $files) {
	
	$log_files = $files

	class {'remote_syslog2::install':}
	
	file {'/etc/log_files.yml':
		ensure => present,
		content => template('remote_syslog2/log_files.yml.erb'),
		notify => Service['remote_syslog']
	}

	service {'remote_syslog':
		ensure => running,
		enable => true,
	}

}