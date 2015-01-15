class munin-node::configure {
	file { '/etc/munin/munin-node.conf' :
	ensure => present,
	source => 'puppet:///modules/munin-node/munin-node.conf',
	owner => munin,
	group => munin,
	require => Class['munin-node::install'],
	notify => Class['munin-node::service'],
	}
}
