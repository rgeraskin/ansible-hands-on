# Description

Besides being an objective on the Red Hat Certified Ansible Specialist Exam, a demonstrated ability to use Ansible templates, variables, and facts is essential to practical systems deployment through Ansible. Templates allow for a streamlined approach to configuration management that reduces configuration error and simplifies system upkeep. This learning activity starts a student on a path from basic Ansible knowledge to a strong working knowledge that is necessary for real-world application.

# Additional Information and Resources

A colleague of yours was the unfortunate victim of a scam email, and their network account was compromised. Shortly after you finished helping them pack up their desk, your boss gave you the assignment to promote system security through deploying a hardened  _sudoers_  file. You will need to create an Ansible template of the  _sudoers_  file that meets the following criteria:

* A file named  _/etc/sudoers.d/hardened_  to deploy on all ansible inventory servers. WARNING: Do NOT edit the default  _sudoers_  file, doing so may break your exercise environment. Additionally, always validate any file placed in  _/etc/sudoers.d_  with  `/sbin/visudo -cf <filename>`  prior to deployment!!
* Grant users in the  _sysops_  group the ability to run all commands as  _root_  for each local system by IP address. This would be what the entry in your result file except with the target system's IP:  `%sysops 34.124.22.55 = (ALL) ALL`.
* Define the  _host_alias_  group WEBSERVERS to contain all servers in the  _ansible web inventory_  group:  `Host_Alias WEBSERVERS = <host name>`
* Define the  _host_alias_  group  _DBSERVERS_  to contain all servers in the  _ansible database inventory_  group:  `Host_Alias DBSERVERS = <host name>`
* Grant users in the  _httpd_  group the ability to  `sudo su - webuser`  on the  _WEBSERVERS_  hosts:  `%httpd WEBSERVERS = /bin/su - webuser`
* Grant users in the dba group sudo su - dbuser on the DBSERVERS hosts:  `%dba DBSERVERS = /bin/su - dbuser`
* The file must be validated using  `/sbin/visudo -cf`  before deployment.

You will need to create an accompanying playbook in  _/home/ansible/security.yml_  that will deploy this template to all servers in the default inventory.

Summary tasks list:

* Create a template  _sudoers_  file in */home/ansible/hardened.j2* that produces a file with appropriate output for each host.
* The deployed file should resemble the following, except with the  _IP_  and  _hostnames_customized appropriately:
    
    ```
      %sysops 34.124.22.55 = (ALL) ALL
      Host_Alias WEBSERVERS = server1, server2
      Host_Alias DBSERVERS = serverA, serverB
      %httpd WEBSERVERS = /bin/su - webuser
      %dba DBSERVERS = /bin/su - dbuser
    ```
    
* Create a playbook in  _/home/ansible/security.yml_  that uses the template module to deploy the template on all servers in the default ansible inventory after validating the syntax of the generated file.
  * Note: You may find it easier to have the play output to  _/home/ansible/test_  and validate manually using  `/sbin/visudo -cf <filename>`  before using the template module's validate.
  * IMPORTANT: Do not deploy any file to  _/etc/sudoers.d/_  without first validating with visudo! A syntax error in a  _sudoers_  file will break sudo on the system and require starting the exercise over again!
* Run the playbook and ensure the files deployed correctly.

Important notes:

* For your convenience, Ansible has been installed on the control node.
* The user  _ansible_  has been already created on all servers with the appropriate shared keys for access to the necessary servers from the control node. It has the same password as  _cloud_user_.
* All necessary Ansible inventories have been created for you.