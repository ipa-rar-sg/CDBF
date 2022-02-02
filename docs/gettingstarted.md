# Getting started
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
