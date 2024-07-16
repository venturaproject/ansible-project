# Define el contenedor de la aplicación
APP_CONTAINER=ansible-docker-ansible-1
PROJECT_NAME=ansible-docker

run:
	@docker-compose build --no-cache
	@docker-compose -p $(PROJECT_NAME) up -d

# Comando para entrar al contenedor de manera interactiva
enter-app-container:
	@docker exec -it $(APP_CONTAINER) bash

