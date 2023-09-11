# docker-node-ionic-chrome
Docker image for Ionic with node and chrome

### Pull from Docker Hub
```
docker pull francoisduchemin/node-chrome:latest
```

### Build from GitHub
```
docker build -t francoisduchemin/ionic-chrome github.com/francoisduchemin/docker-node-chrome
```

### Run image
```
docker run -it francoisduchemin/node-chrome bash
```

### Use as base image
```Dockerfile
FROM francoisduchemin/node-chrome:latest
```
