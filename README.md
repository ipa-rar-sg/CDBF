# Continuous Delivery Better Factory (CDBF)

Approach to implement CD for the network of LIDARs system using Ansible as main tool.

### Installation & Requirements
1. Install Ansible as desired based on what is specified in [their official documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).
It can be with your OS packet manager, or even through PIP.
2. OpenSSH server is required for every single machine. Therefore make sure to have it,
or install it by running:
```bash
sudo apt install openssh-server
```
3. In the master machine, create for Ansible an ssh key to ensure connection with
the remotes. Give it the desired name, comment, and no passphrase. In this example
the name and comment will be "ansible".
```bash
ssh-keygen -t ed25519 -C "ansible"
```
4. Copy the new generated ssh-key into the remote machines.
```bash
ssh-copy-id -i <PATH_TO_YOUR_LOCAL_SSH_KEY> <IP_REMOTE_MACHINE> 
```

Steps 2 and 4 could be setup instead at the time of the RPI Ubuntu installation and 
configuration steps.

### Setup
- Create/modify the inventory file, add the remote machines' IP to get connected to, one
  per line.
- Create/modify the ansible.cfg file to setup your default configurations to be used
  when running ansible.
- To check that the connection between the master and the remotes are working properly
  the following command can be executed:
  ```bash
  ansible all -m ping
  ```
- Create the desired playbook. In this case one called script.yml is provided. This
  playbook clones(pulls) the THMHO dashboard github repo, installs docker sdk for
  python, and also runs a docker container (Not the one cloned, this was just for
  testing). To try the playbook run:
  ```bash
  ansible-playbook script.yml
  ```

### Playbook for installing docker on Raspberry PI
The ssh setup for the remote machines must be already completed, after that you can
run the following command, which will run the playbook to install playbook on the remote
machines specified in the inventory.
```bash
ansible-playbook dockinstall.yml -u ubuntu -K
```

### References
- [Getting Started with Ansible - YT Videos](https://youtube.com/playlist?list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70)
- [Ansible git documentation](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/git_module.html)
- [Ansible docker documentation](https://docs.ansible.com/ansible/latest/collections/community/docker/docker_container_module.html#ansible-collections-community-docker-docker-container-module)
