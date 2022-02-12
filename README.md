### Grails + session with redis + nginx (load balancer) 

#### Run production

```
$ docker-compose up --build -d
```

To update the project in production use:

```
$ sh atualizaAplicacao.sh  
```


#### Run development

```
$ docker-compose -f docker-compose-dev.yaml up --build -d
$ grailsw run-app
```


#### Run production tomcat embedded with jar

```
$ ./gradlew bootJar  
$ docker-compose -f docker-compose-jar.yaml up --build -d
```