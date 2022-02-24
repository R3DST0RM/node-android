# Docker Container with Node and Android Sdk

An Ubuntu docker container with NodeJS and Android Sdk to help you build your react native applications using CI/CD.

For example this useful when using Docker executor with GitLab.

## Installed versions (latest image)

| Library/Tool | Version       |
|--------------|---------------|
| Node         | 16.14.0       |
| npm          | 8.3.1         |
| Android API  | 29       |
| Ubuntu       | 20.04 (Focal) |

## Usage

Feel free to pull this repository and build the Docker image yourself. If you don't want to do this, you can also pull a pre-compiled image from the Docker Hub.

### Pre-compiled image

In order to pull a pre-compiled image you can use the following command. This command will pull the latest version of the image.

```bash
docker pull r3dst0rm/node-android
```

### Compile manually

```bash
docker build -f Dockerfile -t <YOUR_TAG> .
```
