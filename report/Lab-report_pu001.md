# Enterprise Linux Lab Report

- Student name: 
- Github repo: <https://github.com/HoGentTIN/elnx-1920-sme-Dyvex.git>
- Goal : Setting up a LAMP server

## Test plan
  #### 00-Server-setup
  1. Go to the projectfolder  on the host system.
  2. Execute `vagrant status`.
  3. Execute`vagrant up pu001`.
  4. `vagrant ssh pu001` and execute the test `sudo /vagrant/test/runbats.sh`.
  5. log out and log in again through SSH connection with `dylano@192.0.2.10`.
  #### 01-lamp
  1. Execute `vagrant up pu001` Where there failed tasks and/or services ?
  2. `vagrant ssh pu001` and execute the tests again with `sudo /vagrant/test/runbats.sh`.
  3. Are http and https accessible through the internet?
  4. Surf to *192.0.2.10/wordpress*
  5. Is the database 'wp_db' made and does the user 'wp_user' have the necessary rights assigned to him?
  
## Procedure/Documentation
   #### 00-Server-setup
   - First I started by importing the role `bertvv.rh-base` in `ansible/site.yml`,then I took the variables that needed to be changed from the 'default' and defined them in `host_var/pu001.yml`
      * [Link to configuration](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/ansible/host_vars/pu001.yml)
   - Then I executed the tests which succeeded.
   #### 01-lamp
   - First I started by importing the necessary roles again,so I added these:
      ```
        - hosts: pu001
          become: true
          roles: 
          - bertvv.rh-base (was already added ofcourse)
          - bertvv.mariadb
          - bertvv.httpd
          - bertvv.wordpress
      ```
   - After this I set the variables of the role `bertvv.rh-base` that were required by every server in the `group_vars/all.yml` folder.
   - Then I went to the roles github pages for the example playbook and the extra information and defined the necessary variables of each role in `host_vars/pu001.yml`
   - After each succesfull 'up' I went into the machine and executed the test until it fully succeeded.
      * [Link to configuration](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/ansible/host_vars/pu001.yml)
      
## Test report
#### 00-server-setup
![Image1](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/report/Testrapporten/pu001/00-runbats.png)


## Resources

List all sources of useful information that you encountered while completing this assignment: books, manuals, HOWTO's, blog posts, etc.
