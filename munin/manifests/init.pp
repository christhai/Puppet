class munin {
	package {"apache2":
		ensure => installed,
	}
	package { "munin" :
		ensure => installed,
		require => Package['apache2'],
	}
	exec { "fix_permission" :
		path => "/bin:/usr/bin",
		command => 'sed -i "s/Allow from .*/Allow from All/" /etc/apache2/conf.d/munin && service apache2 restart',
		unless => "grep 'Allow from All' /etc/apache2/conf.d/munin",
		require => Package['munin'],
	}
}
