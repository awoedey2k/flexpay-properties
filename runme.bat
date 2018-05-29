rem start call mvn clean install package -U -Dmaven.test.skip=true
cd config-service
start  call  mvn spring-boot:run
TIMEOUT 80
cd ../discovery-server
start call  mvn spring-boot:run
TIMEOUT 80
cd ../gateway-services
start call  mvn spring-boot:run

cd ../user-server
start call  mvn spring-boot:run

cd ../merchant-service
start call  mvn spring-boot:run
cd ..