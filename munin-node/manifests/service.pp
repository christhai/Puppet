class munin-node::service {
	service { 'munin-node' :
	ensure => running,
	hasstatus => true,
	hasrestart => true,
	enable => true,
	require => Class['munin-node::configure'],
	}
}
