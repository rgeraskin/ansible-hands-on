# Description
Description
A common theme in everyday systems administration is the need to work with system files. It follows that any good configuration management or automation engine must be able to do the same. This exercise challenges students to use Ansible to execute varying tasks on remote systems involving file manipulation.

# Additional Information and Resources
The development team has released the latest build of the enigma software. You have been approached to install the latest version on the QA systems. The development team has provided a task list of how to install the build. Rather than run through the steps on all the servers in your environment, you can use Ansible to run each task on all the servers at one time!

The Ansible control node has been configured for you and each QA server has already been configured for use with Ansible. The default inventory has been configured to include a `qa-servers` host group which includes the host that requires the new software. Execute the task list provided below using the appropriate Ansible `ad-hoc` commands.

__SPECIAL NOTE:__ Although you will initially log in as the 'cloud_user', please 'sudo su -' to the 'ansible' user in order to complete the solution. All the SSH keys have been created and exchanged among the hosts in order to allow the tasks to be run appropriately.

__Note:__ This URL only works correctly when accessed on the lab servers. The dmain name DNS entry is overridden in `/etc/hosts` on each lab server. If you attempt to access it from another system, you will reach a parked domain.

Installation task list:

* Download http://software.xyzcorp.com/enigma.tgz to `/tmp` on each host in qa-servers and verify the sha256 checksum via http://software.xyzcorp.com/enigma-checksum.txt. (__Note:__ There is a bug in ansible `get_url` that currently only allows using the literal checksum value instead of a file location for the checksum argument! Thus, you must copy the checksum value from the provided checksum file and then paste that value into the `ansible` command rather than simply providing the checksum file URL in the command.)
* Extract `/tmp/enigma.tgz` to `/opt/` on all hosts in qa-servers.
* Update the line of text "DEPLOY_CODE" in `/opt/enigma/details.txt` to the "CODE_RED" on each server in qa-servers.
* Set the group ownership of the directory `/opt/enigma/secret/` and each file contained within the directory so that the group owner is `protected` for each host in qa-servers.
* Delete the file `/opt/enigma/tmp/deployment-passwords.txt` from all servers.