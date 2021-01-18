start:
	docker-compose up -d --build

stop:
	docker-compose down

# healthcheck:
# 	docker-compose run --rm healthcheck

install: start #healthcheck

configure:
	docker-compose -f docker-compose.yml -f wp-auto-config.yml run --rm wp-auto-config

autoinstall: start configure

clean: stop
	@echo "💥 Removing related folders/files..."
	@rm -rf  mysql/* wp/*

reset: clean

