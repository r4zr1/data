#!/bin/bash

expect <<END
	set timeout 300
	spawn docker run -it -v /opt/streamr1:/home/streamr/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey1"
	send -- "\n"
	expect "Select the plugins"
	send -- "\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END

expect <<END
	set timeout 300
	spawn docker run -it -v /opt/streamr2:/home/streamr/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey2"
	send -- "\n"
	expect "Select the plugins"
	send -- "\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END

expect <<END
	set timeout 300
	spawn docker run -it -v /opt/streamr3:/home/streamr/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey3"
	send -- "\n"
	expect "Select the plugins"
	send -- "\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END

expect <<END
	set timeout 300
	spawn docker run -it -v /opt/streamr4:/home/streamr/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey4"
	send -- "\n"
	expect "Select the plugins"
	send -- "\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END

expect <<END
	set timeout 300
	spawn docker run -it -v /opt/streamr5:/home/streamr/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey5"
	send -- "\n"
	expect "Select the plugins"
	send -- "\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END
