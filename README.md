# Example docker-compose for zolotyh


## Structure
```
app - main go app
  src - code app
  Makefile - build enterypoint
  Dockerfile - how build image 
cron - cron app
  assets - file for image
  Makefile - build enterypoint
  Dockerfile - how build image 
 ...
postgres - postgres db
 ...
```

## Docker network relationships
```
app -> postgres
app -> smtp

cron -> app
cron -> postgres
```

## Docker ports
```
app -> 8000
smtp -> 8025, 1025 (only for internal)
postres -> 5432
cron -> none
```

## Get started
build all image and start containers, rerun build only change apps
```
make
```
Order for build (look to Makefile)
* postgres
* app
* cron


## Clean all images and data
```
make clean
```

Notice: This message is not error
```
Removing volume zolotyh_postgres-data
docker rmi
"docker rmi" requires at least 1 argument(s).
See 'docker rmi --help'.

Usage:  docker rmi [OPTIONS] IMAGE [IMAGE...]

Remove one or more images
Makefile:17: ошибка выполнения рецепта для цели «clean»
make: *** [clean] Ошибка 1
```
