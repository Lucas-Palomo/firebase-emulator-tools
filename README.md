# About

Hi guys !

This is an image based on ubuntu:18.04 containing a small toolkit.

### Tools in this image

- **apt-utils**
- **curl**
- **firebase-tools**
- **nodejs** _( default ubuntu version is nodejs-8 )_
- **openssl**
- **openjdk 8**
- **openjre 8**
- **sudo**

# Build


`docker build -t darksrc/firebase-emulator-tools:1.0.0 . --build-arg=USER=default --build-arg=PASSWORD=default`

- **-t** is the name of your image
- **--build-arg** is the arguments used in this build


# Users

This image has a default user named **default**. By default the user password is **default**

To use the **root** user, you need to change the password, run the following command to do this.

`sudo passwd root`

after changing the password run the following command to log in as root user.

`su root`

# Instructions

`docker run --name firebase-tools --network=host -it darksrc/firebase-emulator-tools bash`

- **--name** is the name of your container
- **--network=host** it expose all container port in your localhost
- **-it** is the interactive mode


Run the following command in your container

- `firebase-tools login`

All right. Now just use firebase-tools

# Advanced Usage

Some advanced usage ideas.

- You can expose just a few ports in your container. [See docker expose](https://docs.docker.com/engine/reference/run/#expose-incoming-ports)
- You can mount a folder inside your container. [See docker volumes](https://docs.docker.com/engine/reference/run/#volume-shared-filesystems)


# References:

- [Firebase-Tools](https://www.npmjs.com/package/firebase-tools)
- [Firebase CLI](https://firebase.google.com/docs/cli)


----

**Please give a star if this image helped you.**

**See this project on [Docker Hub](https://hub.docker.com/r/darksrc/firebase-emulator-tools)**
