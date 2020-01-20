# Enterprise Linux Lab Report

- Student name: Dylano Steenhuyzen 
- Github repo: <https://github.com/HoGentTIN/elnx-1920-sme-Dyvex.git>
- Goal: Setting up a DHCP-server and configuring the router

## Test plan
- Create a new VirtualBox VM manually, give it two host-only network interfaces, both attached to the VirtualBox host-only network with IP 172.16.0.0/16.
- Write down the MAC address of one of the two interfaces (or set it manually, e.g. "DE:AD:C0:DE:CA:FE")
     * ensure the DHCP gives that host a reserved IP address from the correct address range.
     * Both network interfaces can be attached at the same time, but you could disconnect the cable of one
- Boot the VM with a LiveCD ISO (e.g. Fedora, but Ubuntu, Kali, etc. should also be fine).

## Procedure/Documentation
- I'd like to start by saying that the dhcp server was the most difficult regarding the configuration. So again I imported the necessary role,`bertvv.dhcp` in my `site.yml`.
- After that,I look at the example playbook and README.md of the dhcp role github page to see how it works.
- Then I started configurating always upping and destroying until I finally did the correct configuration.
- To verify,I had to make a virtualbox manually and make the dhcp server assign it an address of the correct pool that eventually worked.

## Test report
- So I started with manually putting up a box 'test-werkstation' in VBox,there I also inserted the necessary CentOS-7.7 iso.
- Then I defined two host-only adapters ( 172.16.0.0/24).
- After the installation of the box I first defined the host in `host_vars/pr003.yml`as:
    ```
    dhcp_hosts:
      - name: Test-werkstation
        mac: 08:00:27:8f:03:54
        ip: 172.16.128.20
    ```
- The following step was to boot the client and configurate it as a dhcp client,now then I had to use two very important commands to achieve this:
    * `sudo ip link set dev enp0s3 down`
    * `sudo dhclient enp0s3`
- To test if it worked I used `ip a` or `ip addr show` and gained the following result:
 ![image1](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/report/Images/pr003/pr003_juisteip.png)
 
 - As you could see, I gained an address from the correct subnet pool as well being able to ping my dhcp server. I wasn't able to do this before executing the two commands shown above.
 
 - To verify,I checked by using the following command: `cat /var/lib/dhclient/dhclient.leases` and gained the following output:
![image2](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/report/Images/pr003/pr003_leases.png)

## Resources
* De algemene dhcp manual van linux:    
    - https://linux.die.net/man/5/dhcpd.conf        

* Bert zijn github-repo van dhcp:
    - https://github.com/bertvv/ansible-role-dhcp/blob/master/README.md 
    - https://github.com/bertvv/ansible-role-dhcp/blob/vagrant-tests/test.yml

* Algemene tutorials over de werking en het gebruik van dhcp's in linux:
    - https://linuxconfig.org/what-is-dhcp-and-how-to-configure-dhcp-server-in-linux
    - https://linuxacademy.com/guide/13613-introduction-to-dhcp/
