
----- docker build for app -----
docker build -t app:v1.0 .
docker stop app-container && docker rm app-container
docker run -d --name app-container -p 8080:8080 app:v1.0
docker restart app-container
docker logs app-container
docker logs -f --tail 100 app-container
docker exec -it app-container /bin/bash
docker ps

