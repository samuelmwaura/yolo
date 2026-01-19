### YOLO PROJECT VIRTUALIZATION IMPLEMENTATION EXPLANATION

1. Choices of tools

##### Vagrant  for Server Provisioning
Vagrant is choosen in collaboration with virtual box inorder to create a server that will hold and server the resources for the yolo application. The server is provisioned by running **vagrant init** to initialize a vagrant file that specifies the characteristics of the server on which the application is deployed.  
The initial network specification and number or CPUs cores to be engaged and the the memeory are all defined in the Vagrant file. The file specifies **ubuntu/jammy64** as the box image from where the server in our virtual machine runs.

##### Ansible.cfg, hosts, and playbook.yaml for configuration
Once the server has been provisioned, it is configured and ,ade ready using the **playbook.yaml** file that contains a series of tasks that when run;
   - Update the apt package manager in the server
   - Confirm that the server is connected
   - Install docker that will hold and the application containers
   - Create docker networks
   - Create docker volumes
   - Build the images from the dockerfiles.
   - Run all the 3 application containers and network them for communication.
   - Sets the application ready for running.
   - A minimal linux debian operating system that provides the linux operating system
   - System libraries that run node, npm modules and that open network ports.

**Ansible.cfg** is the file where all has been defaults defined in ansible defaults file have been overriden to provide the contets pf the yolo Application. Here the vagrant folder path that has the private key has been defined , the path to the inventory pf servers to be managed and the user to be used to access the server are as well detailed here.

The **hosts** file contains a detail of the servers to be managed using the playbook that has been detailed in the application. For the case of the YOLO Application, the server is one and will have docker where all the 2 applications will run from.


