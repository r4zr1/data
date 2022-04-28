#!/bin/bash

expect <<END
	set timeout 300
	log_file switch1.log
	spawn docker run -it -v /opt/streamr1:/root/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey1"
	send -- "\n"
	expect "Select the plugins"
	send -- "a\n"
	expect "Provide a port for the websocket"
	send -- "7170\n"
	expect "Provide a port for the mqtt"
	send -- "1883\n"
	expect "Provide a port for the publishHttp"
	send -- "7171\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END
echo '======' >> res1.txt
echo $(hostname) >> res1.txt
pcregrep -o1 -e 'name is (.*?)\.' -e '(https://streamr.network/network-explorer/nodes/0[xX][0-9a-fA-F]+)' -e '(0[xX][0-9a-fA-F]+)' switch1.log >> res1.txt

expect <<END
	set timeout 300
	log_file switch2.log
	spawn docker run -it -v /opt/streamr2:/root/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey2"
	send -- "\n"
	expect "Select the plugins"
	send -- "a\n"
	expect "Provide a port for the websocket"
	send -- "7172\n"
	expect "Provide a port for the mqtt"
	send -- "1884\n"
	expect "Provide a port for the publishHttp"
	send -- "7173\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END
echo '======' >> res2.txt
echo $(hostname) >> res2.txt
pcregrep -o1 -e 'name is (.*?)\.' -e '(https://streamr.network/network-explorer/nodes/0[xX][0-9a-fA-F]+)' -e '(0[xX][0-9a-fA-F]+)' switch2.log >> res2.txt

expect <<END
	set timeout 300
	log_file switch3.log
	spawn docker run -it -v /opt/streamr3:/root/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey3"
	send -- "\n"
	expect "Select the plugins"
	send -- "a\n"
	expect "Provide a port for the websocket"
	send -- "7174\n"
	expect "Provide a port for the mqtt"
	send -- "1885\n"
	expect "Provide a port for the publishHttp"
	send -- "7175\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END
echo '======' >> res3.txt
echo $(hostname) >> res3.txt
pcregrep -o1 -e 'name is (.*?)\.' -e '(https://streamr.network/network-explorer/nodes/0[xX][0-9a-fA-F]+)' -e '(0[xX][0-9a-fA-F]+)' switch3.log >> res3.txt

expect <<END
	set timeout 300
	log_file switch4.log
	spawn docker run -it -v /opt/streamr4:/root/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey4"
	send -- "\n"
	expect "Select the plugins"
	send -- "a\n"
	expect "Provide a port for the websocket"
	send -- "7176\n"
	expect "Provide a port for the mqtt"
	send -- "1886\n"
	expect "Provide a port for the publishHttp"
	send -- "7177\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END
echo '======' >> res4.txt
echo $(hostname) >> res4.txt
pcregrep -o1 -e 'name is (.*?)\.' -e '(https://streamr.network/network-explorer/nodes/0[xX][0-9a-fA-F]+)' -e '(0[xX][0-9a-fA-F]+)' switch4.log >> res4.txt

expect <<END
	set timeout 300
	log_file switch5.log
	spawn docker run -it -v /opt/streamr5:/root/.streamr streamr/broker-node:latest bin/config-wizard
	expect "Do you want to generate"
	send -- "\033\[A\n"
	expect "Please provide the private key to import"
	send -- "privatekey5"
	send -- "\n"
	expect "Select the plugins"
	send -- "a\n"
	expect "Provide a port for the websocket"
	send -- "7178\n"
	expect "Provide a port for the mqtt"
	send -- "1887\n"
	expect "Provide a port for the publishHttp"
	send -- "7179\n"
	expect "Do you want to participate"
	send -- "Y\n"
	expect "Select a path to store"
	send -- "\n"
	expect eof
END
echo '======' >> res5.txt
echo $(hostname) >> res5.txt
pcregrep -o1 -e 'name is (.*?)\.' -e '(https://streamr.network/network-explorer/nodes/0[xX][0-9a-fA-F]+)' -e '(0[xX][0-9a-fA-F]+)' switch5.log >> res5.txt