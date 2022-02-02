1. Playbook for installing docker
`install_docker.yml`
    ```bash
    ```

2. Playbook for copying bash scripts to Raspberry PI
`copy_exec_file.yml`
This file is custom made for each device and to modify bash file `run.sh` look for the corresponding device name found inside `production` directory.
    ```
    .
    ├── hosts
    ├── node1
    │   └── run.sh
    ├── node2
    │   └── run.sh
    ├── node3
    │   └── run.sh
    ├── node4
    │   └── run.sh
    ├── node5
    │   └── run.sh
    ├── node6
    │   └── run.sh
    ├── node7
    │   └── run.sh
    ├── node8
    │   └── run.sh
    └── node9
        └── run.sh

    ```

    ```bash
    ```

3. Playbook for installing ROS noetic 
`install_ros.yml`

    ```bash
    ```

4. Playbook for building and sourcing ros pkgs on Raspberry PI
`pull_build_lidar_workspace.yml`

    ```bash
    ```

5. Playbook for pulling docker image from dockerhub and run on Raspberry PI
`pull_run_docker_container.yml`

    ```bash
    ```

6. Playbook for rebooting all the devices in the network
`reboot.yml`
    ```bash
    ```