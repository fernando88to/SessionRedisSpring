FROM tomcat:9.0.58-jdk11-temurin
#if not using websocket you can remove theses libraries
RUN rm $CATALINA_HOME/lib/websocket-api.jar
RUN rm $CATALINA_HOME/lib/tomcat-websocket.jar

#conf/context.xml:
#<JarScanner>
#    <JarScanFilter defaultPluggabilityScan="false" defaultTldScan="false"/>
#</JarScanner>
COPY context.xml $CATALINA_HOME/conf/context.xml


COPY build/libs/SessionRedisSpring-0.1-plain.war $CATALINA_HOME/webapps/app.war
ENV CATALINA_OPTS="-server -noverify -Xms512m -Xmx512m -XX:MetaspaceSize=256m -XX:MaxMetaspaceSize=256m -XX:TieredStopAtLevel=1 -Dspring.output.ansi.enabled=always -Duser.language=pt -Duser.country=BR  -Djava.awt.headless=true  -Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9999 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Djava.rmi.server.hostname=127.0.0.1"
