# Description
Working with Ansible roles is a key concept on the Red Hat Certified Ansible Specialist Exam (EX407). This is not a surprise when you realize how much functionality is had with roles. This exercise is designed to cover both how to develop a role as well as using roles within playbooks. This exercise assumes students have basic proficiency with several common ansible modules and general ansible playbook use. Upon completion of the learning activity, a student will have developed an improved understanding of Ansible roles.

# Additional Information and Resources
You have just begun a new job as the operations lead at a small company. There is currently no formal server baseline, and it makes for a mixed configuration environment that is consuming more support and maintenance than it should. You have taken it upon yourself to create a baseline process using Ansible by creating a baseline role. You have noted the following commonalities that should be included in the baseline role:

* Set __/etc/motd__ based on a template.
* Install the latest Nagios client.
* Add the Nagios server to __/etc/hosts__.
* Create a __noc__ user.
* Import the __noc__ user's public key (copy authorized __keys to /home/noc/.ssh/authorized_keys__).
The role should be called "baseline" and should reside in __/etc/ansible/roles__ on the __ansible control__ node.

You will be testing your role on some newly requested webservers. A playbook called __web.yml__ has been provided which deploys httpd to all servers in the web group (defined in your default inventory). You will need to edit the playbook to deploy the __baseline__ role to the servers in the __web__ group as well.

You will find the __motd__ template, Nagios server IP information, the __noc__ user's public key, and the __web.yml__ playbook in __/home/ansible/resources__ on the __ansible control__ node.

Summary tasks list:

* Create necessary directories and files for the __baseline__ role.
* Configure the role to deploy the __/etc/motd__ template.
* Configure the role to install the latest Nagios client.
* Configure the role to add an entry to __/etc/hosts__ for the Nagios server.
* Configure the role to create the __noc__ user and deploy the provided public key for the __noc__ user on target systems (copy __authorized_keys__ to __/home/noc/.ssh/authorized_keys__ with the __owner__ and __group owner__ set as __noc__ and the mode as __0600__).
* Edit __web.yml__ to deploy the __baseline__ role in addition to what it already does.
* Verify you role works by deploying __web.yml__ with Ansible.

Important notes:

* For your convenience, Ansible is already on the control node.
* The user __ansible__ is on all servers with the appropriate shared keys for access to necessary servers from the control node.
* The __ansible__ user has sudo access with no password. It has the same password as __cloud_user__.
* All necessary Ansible inventories have been created for you.