class munin-node {
	include munin-node::install
	include munin-node::configure
	include munin-node::service
}
