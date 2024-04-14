PROJECT_NAME ?= crm

.PHONY: remote local

remote:
	@echo "Starting remote images"
	@docker compose -p ${PROJECT_NAME} --profile remote up --build

local:
	@echo "Starting local images"
	@docker compose -p ${PROJECT_NAME} --profile local up --build