proxy-server-ansible
====================

Proxy server for my home network.

Uses openresty + redis + lua

Configure
=========

Add a custom `hosts` file:

	[servers]
	10.5.5.202 ansible_ssh_user=blah
