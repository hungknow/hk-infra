stage-mysql-deploy:
	docker-compose -f ./mysql/docker-compose.base.yml \
		-f ./mysql/docker-compose.stage.yml \
		--env-file ./env-files/.env.hk_stage \
		--env-file ./env-files/mysql.env.hk_stage \
		up -d

stage-wp-dev-deploy:
	docker-compose \
		-f ./wordpress-dev/docker-compose.base.yml \
		-f ./wordpress-dev/docker-compose.stage.yml \
		--env-file ./env-files/.env.hk_stage \
		--env-file ./env-files/wordpress-dev.env.hk_stage \
		up -d

stage-wp-dev-down:
	docker-compose \
		-f ./wordpress-dev/docker-compose.base.yml \
		-f ./wordpress-dev/docker-compose.stage.yml \
		--env-file ./env-files/.env.hk_stage \
		--env-file ./env-files/wordpress-dev.env.hk_stage \
		down