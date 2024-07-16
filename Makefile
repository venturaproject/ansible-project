
APP_CONTAINER=ansible-docker-ansible-1
PROJECT_NAME=ansible-docker

run:
	@docker-compose build --no-cache
	@docker-compose -p $(PROJECT_NAME) up -d

enter-app-container:
	@docker exec -it $(APP_CONTAINER) bash

execute:
	@docker exec -it $(APP_CONTAINER) ansible-playbook -i /ansible/inventory/inventory.ini /ansible/playbooks/upload_to_ftp.yml


