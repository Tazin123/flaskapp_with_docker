# Complete Dockers for Data Science

# **What is Docker?**

Docker is a platform for developing, shipping, and running applications in containers. This makes it easy to move applications between different environments while ensuring they work consistently.

# What is Container?

1. A way to package application with all the necessary dependencies and configuration.
2. Portable artifact, easily share and move this package to any environment.
3. Makes development and deployment more easy and efficient.

# What is docker image?

1. A Docker image is like a blueprint or template
2. Read-only templates used to create containers

# **Objectives**

1. Fundamentals of dockers

# Task Description

1. Dockers installation
2. Creating a docker image
3. Push docker image to docker
4. Docker compose

## 1. Dockers Installation

System requirements for this step:

- WSL 2 Backend
- For Windows 11, 64-bit: Home or Pro version 21H2 or higher, or Enterprise or Education version 21H2 or higher.
For Windows 10 ,64-bit:
We recommend Home or Pro 22H2 (build 19045) or higher, or Enterprise or Education 22H2 (build 19045) or higher.
- Hardware prerequisites- 64 bit professor, 4GB system RAM

Steps:

1. Go to docker.com
2. Download Docker Desktop for windows

## 2. Creating Docker Image

1. Run a simple web application with the help of Flask that shows Hello world in the browser

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2F0f177a3b-f182-48fb-aed9-72ca738b31cc%2Fimage.png?table=block&id=11ce9bea-0b79-8051-b4cf-f85e60f4d581&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1220&userId=&cache=v2)

1. Now set host and port address and run this
2. Create  Dockerfile

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2F06e565c8-d792-426d-bc98-6decfd70b15f%2Fimage.png?table=block&id=11de9bea-0b79-804f-9176-c27097cca06a&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=2000&userId=&cache=v2)

1. Build the Docker Image

```bash
    docker build -t flask-app .
```

1. To check Docker image build or not

```bash
   docker images
```

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2Fd7485d0a-08f6-4b4b-9de7-2552a2bd9ca7%2Fimage.png?table=block&id=11ce9bea-0b79-807a-aff3-cc5a5e005a74&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)

1. Then write this code to see some logs where container port and host port is 5000

```bash
    docker run -p 5000:5000 welcome-app
```

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2F689fed16-6f9f-4f2e-a6d6-c7744a631c10%2Fimage.png?table=block&id=11ce9bea-0b79-807d-b1f8-c0bfa6983222&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)

1. Now check how many containers are running;

```bash
    docker ps
```

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2F295347d6-5ac3-4d03-aabf-aee564466a73%2Fimage.png?table=block&id=11ce9bea-0b79-806b-8ded-c3f98e53e098&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)

## 2. Push Docker Image to Docker

1. First log into the DockerHub

```bash
    docker login
```

2. Rename the file by user name by such command

```bash
    docker tag welcome-app tazin/welcomeapp
```

Then check  the rename process successful or not

```bash
    docker images
```

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2F3a4c8c0e-40b6-4cb2-94bb-3be124383517%2Fimage.png?table=block&id=11ce9bea-0b79-808c-b130-e0282c8c3e02&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)

1. Push the file by this command

```bash
    docker push tazin/welcome-app:latest
```

After that command the output will be

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2Fb74b42ad-5066-4eb3-81ae-d9d1d6c2d46d%2Fimage.png?table=block&id=11ce9bea-0b79-802a-92a7-fc534d50591c&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)

We can also push by creating Makefile like this

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2Feec1f6c0-f124-4fcb-8c0a-92b202230d60%2Fimage.png?table=block&id=11ce9bea-0b79-80e3-b3fb-f92c11984522&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)

Then we will use this command

```bash
    make build
```

```bash
    make push
```

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2F2aeb0a35-4e63-4034-95bd-30fc0accba74%2Fimage.png?table=block&id=11ce9bea-0b79-8099-a02b-f179414f6372&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)

The we will check in the docker hub repository to check:

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2F38770bf5-bc24-4395-bcda-9d3cf0c73a46%2Fimage.png?table=block&id=11ce9bea-0b79-805f-b5cc-c859d3132837&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)



We can also the docker by this command

```bash
    docker run -p 5000:5000 shaharalaila/welcome-app:1.0.3
```

## 4. Docker Compose

1. Create a Docker-Compose.yml file
2. Set the port.

![image.png](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2Fef095387-8833-4090-b404-985a3031cc23%2Fimage.png?table=block&id=11ce9bea-0b79-8098-aa7d-fe9b1b226bd2&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)

1. Write this command

```bash
    docker-compose up
```

![WhatsApp Image 2024-10-12 at 18.56.53_34e43089.jpg](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2Fad1f084d-ec03-4249-9a4e-f4e31f5d936b%2FWhatsApp_Image_2024-10-12_at_18.56.53_34e43089.jpg?table=block&id=9a633177-1425-4607-886d-9c84760c8364&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)

We can also use docker-compose directly passing the dockerfile location in docker-compose

```yaml
    version: '3'
    services:
    web:
    build:
    context: .
    dockerfile: Dockerfile
    ports:
    - "5000:5000"
```

Run this by this command

```bash
    docker-compose -f docker-compose1.yaml up --build
```

![WhatsApp Image 2024-10-12 at 18.56.53_34e43089.jpg](https://boom-dosa-7aa.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F9f04fa16-9d5d-49ed-8d00-46245484e5af%2Fc4ac30f2-0dc2-416e-976c-16299e02255d%2FWhatsApp_Image_2024-10-12_at_19.27.26_88e2b1af.jpg?table=block&id=6efc05cc-40f0-46ed-a852-2b8e074c510c&spaceId=9f04fa16-9d5d-49ed-8d00-46245484e5af&width=1420&userId=&cache=v2)