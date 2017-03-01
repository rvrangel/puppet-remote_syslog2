
class remote_syslog2::install {

	$package_url = 'https://github.com/papertrail/remote_syslog2/releases/download/v0.19/remote-syslog2_0.19_amd64.deb'

	exec {'download package':
		command => "/usr/bin/wget $package_url -O /tmp/remote-syslog2.deb",
		creates => '/tmp/remote-syslog2.deb',
		onlyif => '/usr/bin/test ! -f /usr/local/bin/remote_syslog',
	}
	->
	package {'remote-syslog2':
		ensure => latest,
		provider => dpkg,
		source => '/tmp/remote-syslog2.deb',
	}
}
