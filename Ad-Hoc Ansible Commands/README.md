# Description

One of the keys to success with Ansible is being able to run  `ad-hoc`commands. The value of  `ad-hoc`  commands is underscored by the fact that it is an objective of the  _Red Hat Certified Ansible Specialist_  exam. This exercise guides students through crafting many  `ad-hoc`  commands which will not only build experience with the concept but also broaden the students' exposure to various Ansible command modules.

# Additional Information and Resources

Some consultants have been employed to perform audits on a number of systems in your company's environment. You must create the user accounts noted in  _/home/ansible/userlist.txt_  and set up the provided public keys for their accounts. The security team has built a jump host for the consultants to access production systems and provided the full key-pair to you so you may set up and test the connection. All hosts in  `dbsystems`  will need the provided public key installed so the consultants may use key-pair authentication to access the systems. Also, you must ensure the  `auditd`  service is enabled and running on all systems.

To summarize, you must do the following:

1.  Create the user accounts noted in  `/home/ansible/userlist.txt`.
2.  Copy the  `authorized_keys`  file for each user to the correct location so the new accounts can log in with ssh key authentication.
3.  Ensure  `auditd`  is enabled and running on all systems.

Important notes:

-   For your convenience, Ansible is already on the control node. If you connect to the server by clicking on the Public IP address in your browser, make sure to change to the ansible user with the  `su - ansible`  command.
-   The user  `ansible`  is present on all servers with appropriate shared keys for access to managed servers from the control node. Make sure to use this user to complete the commands.
-   The  `ansible`  user has the same password as  `cloud_user`.
-   The default Ansible inventory has been configured for you with the appropriate hosts and groups.
-   `/etc/hosts`  entries are present on  `control1`  for the managed servers.