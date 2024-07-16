# Ansible Project with Docker

This project uses Docker and Ansible to manage and deploy infrastructure. Below are the commands to build, run, and interact with the Docker containers and execute Ansible playbooks.

## Getting Started

### Setup Environment Variables

First, rename the `.env.dist` file to `.env` and add the following environment variables:

```
SFTP_HOST=ADD_SERVER_SFTP_HOST
SFTP_USER=ADD_SFTP_USER
SFTP_PASSWORD=ADD_SFTP_PASSWORD
LOCAL_DIR_NAME=files
REMOTE_DIR_NAME=files
```

### Build and Run the Docker Containers

To build the Docker containers without using the cache and run them in detached mode, use the following command:



```
make run
```



### Access ansible container

To access the shell (bash) inside the running application container, use the following command:

```
make enter-app-container
```



### Execute Ansible Playbook

To execute the Ansible playbook inside the running container, use the following command:

```
make execute
```


