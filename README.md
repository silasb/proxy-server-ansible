roxy-server-ansible
====================

Proxy server for my home network.

Uses openresty + redis + lua

Deployment Configure
--------------------

Add a custom `hosts` file:

	[servers]
	10.5.5.202 ansible_ssh_user=blah

Deploy
------

`bin/ap`

Enter your sudo password of your fresh Ubuntu 14.04 user

Configuration
-------------

Each application needs to be put into the redis database.

	redis-cli hset servers git.sbaronda.com 10.5.5.202:3000
