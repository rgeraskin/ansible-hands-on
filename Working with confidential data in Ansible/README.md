# Description
The Red Hat Certified Ansible Specialist Exam (EX407) requires an understanding of working with confidential data within Ansible. This Learning Activity goes over how you can use the ansible-vault command to encrypt sensitive files within a vault file and also how to work with those vault files in an Ansible playbook. The exercise assumes basic proficiency with several common ansible modules and general ansible playbook use. Upon completing the learning activity, you will have developed an improved understanding of ansible-vault and vault files.

# Additional Information and Resources
In an effort to improve security, you have been tasked with securing an Ansible variable file. The variable file is to be used in an ansible job that creates a secure website. To do this, complete the following:

1. Encrypt the file __/home/ansible/secret using ansible-vault__.
2. Then configure a vault password file named __/home/ansible/vault__ to be used to run the Ansible playbook __/home/ansible/secPage.yml__ successfully with the encrypted secrets file.
3. Verify your work by running the __secPage.yml__ playbook using __ansible-playbook__ and specifying your vault password file.
4. Test that the site deployed correctly by trying to access http://node1/secure/classified.html using the user __bond__ with the password __james__.

Summary tasks list:

* Encrypt __home/ansible/secret__ using the `ansible-vault` command.
* Create __/home/ansible/vault__ as a vault password file that may be used to access the encrypted secret file without prompt.
* Run the playbook __/home/ansible/secPage.yml__ using your vault password file to validate your work.
* Verify that the secure page deployed correctly by attempting to access http://node1/secure/classified.html as the user __bond__ with the password __james__.

Important notes:

* For your convenience, Ansible has been installed on the control node.
* __/home/ansible/secPage.yml__ provides several examples of how to use various key ansible modules. It is worth looking at, but it should not require modification.
* The user __ansible__ is already on all servers with the appropriate shared keys for access to all necessary servers from the control node.
* The __ansible__ user also has sudo access with no password. It has the same password as __cloud_user__.
* All necessary Ansible inventories have been created for you.