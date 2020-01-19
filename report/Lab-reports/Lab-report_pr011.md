# Enterprise Linux Lab Report

- Student name: Dylano
- Github repo: <https://github.com/HoGentTIN/elnx-USER.git>
- Goal: Setting up a File-server with Samba/vsftpd


## Test plan

The server can be accurately tested with the test script by executing `sudo /vagrant/test/runbats.sh` and it will go through the correct testfolder(name of the server) and will execute the '.bats' files.
In this case,the testfiles will be in `/vagrant/test/pr011`

## Procedure/Documentation
- First I imported the necessary roles again in site.yml:
 ```
 - hosts: pr011
   become: true
   roles:
     - bertvv.rh-base
     - bertvv.samba
     - bertvv.vsftpd
 ```
- Then I started with defining the variables of samba first in `host_vars/pr011.yml`,once the tests for samba succeeded,I moved on to vsftpd where I had a little bit more troubleshooting to do regarding the acls that didn't work properly.
- Eventually the test for vsftpd worked as well after consulting Bert and some of my fellow students.
 * [Link to configuration](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/ansible/host_vars/pr011.yml)
 
## Test report

![Image1](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/report/Images/pr011/runbats_pr011.png)

## Resources
  * Gebruik van Bert zijn github-repo over samba en vsftpd:
    - https://github.com/bertvv/ansible-role-samba/blob/master/README.md
    - https://github.com/bertvv/ansible-role-samba/blob/docker-tests/test.yml
    - https://github.com/bertvv/ansible-role-vsftpd/blob/master/README.md

  * Algemene tutorials over de werking en het gebruik van filetransfer-servers:
    - https://www.pickaweb.co.uk/kb/file-transfer-guide-linux-hosts/
    - https://itsfoss.com/set-ftp-server-linux/
    - https://www.howtoforge.com/tutorial/how-to-install-and-configure-vsftpd/
