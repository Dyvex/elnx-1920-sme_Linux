# Enterprise Linux Lab Report

- Student name: Dylano Steenhuyzen
- Github repo: <https://github.com/HoGentTIN/elnx-1920-sme-Dyvex.git>
- Goal: Setting up a DNS master-server and slave-server

## Test plan
- Both servers can be validated with the test scripts. Execute `sudo /vagrant/test/runbats.sh` on each host to run them. Remark that these tests run locally on the VMs. Ensure that both DNS services are also available from your host system! Add the necessary steps to do this to your test plan and test report!

## Procedure/Documentation
- First I started by importing the role bertvv.rh-base in ansible/site.yml,then I took the variables that needed to be changed from the 'default' and defined them in `host_var/pr001.yml` and `host_vars/pr002.yml`
  * [Link to configuration master server](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/ansible/host_vars/pr001.yml)
  * [Link to configuration slave server](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/ansible/host_vars/pr002.yml)
- To know which variables to specify I first looked at the example playbook and `README.md`,then I watched the troubleshooting slides of BIND of our school who helped me a lot regarding the way dns-servers work.
-At last I executed the tests which succeeded.
## Test report
#### Test execution pr001 (master-server)
![Image1](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/report/Images/pr001-pr002/runbats_pr001.png)
#### Test execution pr002 (slave-server)
![Image2](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/report/Images/pr001-pr002/runbats_pr002.png)


## Resources
* Bert zijn github-repo van dns/bind:
    - https://github.com/bertvv/ansible-role-bind/blob/master/README.md
    - https://github.com/bertvv/ansible-role-bind/blob/docker-tests/test.yml

* Algemene tutorials over de werking van dns-servers in linux:
    - https://www.oreilly.com/library/view/linux-network-administrators/1565924002/ch06s02.html
    - https://computer.howstuffworks.com/dns.htm
    - https://www.golinuxcloud.com/configure-master-slave-dns-server-centos-7/
    - https://www.tecmint.com/setup-master-slave-dns-server-in-centos/
    - http://www.microhowto.info/howto/configure_bind_as_a_slave_dns_server.html

* Eigen troubleshoot-guide van de demo in entreprise Linux en de slides van hiervan:
    - https://hogenttin.github.io/elnx-syllabus/bind/#/title-slide
    - https://github.com/Dyvex/Troubleshooting_cheat-sheet/blob/master/Oplossing-troubleshoot-demo.md
    
