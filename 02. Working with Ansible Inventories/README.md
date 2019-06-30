# Description

Ansible relies on an inventory for base functionality. While inventories can be very simple, they have been designed to be robust. This exercise walks through how to use some of the more advanced features available within an Ansible inventory. Upon completion of this exercise, students will have practical experience with Ansible inventory configuration.

# Additional Information and Resources

Your company has decided the backup software license is frivolous and unnecessary. As a consequence, the license was not renewed. Your supervisor has created a simple script and an ansible playbook to create an archive of select files, depending on pre-defined Ansible host groups as a stop-gap measure. You will create the inventory file to completed the backup strategy.

You must do the following:

-   Create the inventory file in  _/home/ansible/inventory_.
-   Configure the host group  _media_  to contain media1 and media2.
-   Define the following variables for  _media_  with their accompanying values:
    -   _media_content_  should be set to  `/var/media/content/`.
    -   _media_index_  should be set to  `/opt/media/mediaIndex`.
-   Configure the host group  _webservers_  to contain the hosts web1 and web2.
-   Define the following variables for  `webservers`  with their accompanying values:
    -   _httpd_webroot_  should be set to  `/var/www/`.
    -   _httpd_config_  should be set to  `/etc/httpd/`.
-   Define the variable  _script_files_  for specifically for web1. The value of  _script_files_should be set to  `/usr/local/scripts`.
-   You can run  _/home/ansible/scripts/backup.sh_  to test your inventory. If you have correctly configured the inventory, it should not error.
-   Do not edit anything in  _/home/ansible/scripts/_.

Important notes:

-   For your convenience, Ansible has been installed on the control node.
-   The user  _ansible_  has been already created on all servers with appropriate shared keys for access to managed servers from the control node.
-   The  _ansible_  user has the same password as  _cloud_user_.
-   _/etc/hosts_  entries have been made on control1 for the managed servers.
-   Do not edit anything in  _/home/ansible/scripts/_.