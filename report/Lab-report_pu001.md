# Enterprise Linux Lab Report

- Student name: 
- Github repo: <https://github.com/HoGentTIN/elnx-1920-sme-Dyvex.git>
- Goal : Setting up a LAMP server

## Test plan
  #### 00-Server-setup
  1. Naar projectfolder op host systeem gaan.
  2. `vagrant status` uitvoeren.
  3. `vagrant up pu001` uitvoeren.
  4. `vagrant ssh pu001` + test common.bats uitvoeren.
  5. uitloggen en met `dylano@192.0.2.10` inloggen via ssh.
  #### 01-lamp
  1. `vagrant up pu001` uitvoeren,zijn er taken/services gefaald?
  2. `vagrant ssh pu001` en lamp.bats uitvoeren
  3. Zijn http en https toegankelijk op het internet?
  4. Surfen naar *192.0.2.10/wordpress*
  5. Is er een database 'wp_db' aangemaakt en heeft de 'wp_user' de nodige rechten?
  
## Procedure/Documentation

Describe *in detail* how you completed the assignment, with main focus on the "manual" work. It is of course not necessary to copy/paste your code in this document, but you can refer to it with a hyperlink.

Make sure to write clean Markdown code, so your report looks good and is clearly structured on Github.

## Test report

The test report is a transcript of the execution of the test plan, with the actual results. Significant problems you encountered should also be mentioned here, as well as any solutions you found. The test report should clearly prove that you have met the requirements.

## Resources

List all sources of useful information that you encountered while completing this assignment: books, manuals, HOWTO's, blog posts, etc.
