# Description

The playbook concept is at the heart of Ansible. Writing a playbook to configure a system to the desired state is what makes this exercise so valuable to students who are wanting to get serious with Ansible. After completing this learning activity on how to configure an inventory all the way through to a mass software deployment, students will be another step closer to an official Red Hat Ansible certification.

# Additional Information and Resources

Your company has been increasing the deployment of small broacher-style websites for clients. The head of IT has decided that each client should have their own web servers for better client isolation and has tasked you with creating concept automation to quickly deploy web-nodes with simple static website content.

You have been provided an ansible control node and 2 test lab servers (node1 and node2) that have been preconfigured with the ansible user and key.

You must create an ansible inventory in  _/home/ansible/inventory_  containing a host group named  _web_. The web group should contain node1 and node2.

Furthermore, you must design an Ansible playbook that will execute the following tasks on your configured inventory: install  _httpd_, start and enable the  _httpd_  service, and install a simple website provided on a repo server. Create the playbook in  _/home/ansible/web.yml_. The simple website may be accessed from  _[http://repo.example.com/website.tgz](http://repo.example.com/website.tgz)_.

Summary tasks list:

1.  Create an inventory in  _/home/ansible/inventory_  containing a host group named  _web_. The web group should contain node1 and node2.
2.  Create a playbook in  _/home/ansible/web.yml_.
3.  Configure the playbook to install  _httpd_  on the  _web_  group.
4.  Configure the playbook to start and enable the  _httpd_  service on the  _web_  group.
5.  Configure the playbook to retrieve the website from  _[http://repo.example.com/website.tgz](http://repo.example.com/website.tgz)_  on each server in the web group.
6.  Configure the playbook to unarchive the website into  _/var/www/html_  on all servers in the  _web_  group.
7.  Execute the playbook you created using the inventory you created to verify your work.

Important notes:

-   For your convenience, Ansible has been installed on the control node.
-   The user  _ansible_  is present on all servers with appropriate shared keys for access to managed servers from the control node.
-   The  _ansible_  user has the same password as  _cloud_user_.
-   _/etc/hosts_  entries have been made on control1 for the managed servers.