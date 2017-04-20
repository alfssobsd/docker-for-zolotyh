all: build_postgres build_app build_cron run
.PHONY : all

build_cron:
	cd cron && $(MAKE)

build_app:
	cd app && $(MAKE)

build_postgres:
	cd postgres && $(MAKE)

run:
	docker-compose -p zolotyh up -d

clean:
	docker-compose -p zolotyh down -v
	docker rmi $(docker images -q --filter "dangling=true")
