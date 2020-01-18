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
   - First I started by importing the role `bertvv.rh-base` in site.yml,then I took the variables that needed to be changed from the 'default' and defined them in `host_var/pu001`
      * [Link to configuration](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/ansible/host_vars/pu001.yml)
Describe *in detail* how you completed the assignment, with main focus on the "manual" work. It is of course not necessary to copy/paste your code in this document, but you can refer to it with a hyperlink.

Make sure to write clean Markdown code, so your report looks good and is clearly structured on Github.

## Test report
The test report is a transcript of the execution of the test plan, with the actual results. Significant problems you encountered should also be mentioned here, as well as any solutions you found. The test report should clearly prove that you have met the requirements.

## Resources

List all sources of useful information that you encountered while completing this assignment: books, manuals, HOWTO's, blog posts, etc.
