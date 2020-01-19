# Enterprise Linux Lab Report

- Student name: Dylano Steenhuyzen 
- Github repo: <https://github.com/HoGentTIN/elnx-1920-sme-Dyvex.git>
- Goal: Setting up a DHCP-server and configuring the router

## Test plan



## Procedure/Documentation
- Create a new VirtualBox VM manually, give it two host-only network interfaces, both attached to the VirtualBox host-only network with IP 172.16.0.0/16.
- Write down the MAC address of one of the two interfaces (or set it manually, e.g. "DE:AD:C0:DE:CA:FE"), and ensure the DHCP gives that        host a reserved IP address from the correct address range.
     Both network interfaces can be attached at the same time, but you could disconnect the cable of one
- Boot the VM with a LiveCD ISO (e.g. Fedora, but Ubuntu, Kali, etc. should also be fine).

## Test report

The test report is a transcript of the execution of the test plan, with the actual results. Significant problems you encountered should also be mentioned here, as well as any solutions you found. The test report should clearly prove that you have met the requirements.

## Resources
* De algemene dhcp manual van linux:    
    - https://linux.die.net/man/5/dhcpd.conf        

* Bert zijn github-repo van dhcp:
    - https://github.com/bertvv/ansible-role-dhcp/blob/master/README.md 
    - https://github.com/bertvv/ansible-role-dhcp/blob/vagrant-tests/test.yml

* Algemene tutorials over de werking en het gebruik van dhcp's in linux:
    - https://linuxconfig.org/what-is-dhcp-and-how-to-configure-dhcp-server-in-linux
    - https://linuxacademy.com/guide/13613-introduction-to-dhcp/
