FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y sshpass

RUN ansible-galaxy collection install ansible.posix community.general

WORKDIR /ansible

CMD ["tail", "-f", "/dev/null"]