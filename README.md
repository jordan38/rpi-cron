[![pipeline status](https://gitlab.com/nicosingh/rpi-cron/badges/master/pipeline.svg)](https://gitlab.com/nicosingh/rpi-cron/commits/master) [![Docker Pulls](https://img.shields.io/docker/pulls/nicosingh/rpi-cron.svg)](https://hub.docker.com/r/nicosingh/rpi-cron/)

# About

Fork of Docker image of Raspbian made to run schedules commands using cron.

# How to use this Docker image?

We can execute this image using docker-compose or just running a `docker run` command.

## Using docker-compose (a.k.a. "the easy way")

We should create a docker-compose file (e.g. `docker-compose.yml`) with at least:

```
my-container:
  image: nicosingh/rpi-cron
  volumes:
    - ./my-custom-script.sh:/cron-script.sh
  command: "* * * * * root /cron-script.sh"
```

Where:

`image: nicosingh/rpi-cron:`: will be consuming this image. You can create our own `Dockerfile` based on `nicosingh/rpi-cron` image and replace `image:` by `build:`, if required.

`command: "* * * * * root /cron-script.sh"`: means to run `/cron-script.sh` every minute. This script must be placed inside our container (i.e. using a volume).

`volumes`: will mount external scripts to be run in cron. The destination name has to be the same as the command script (in the example `cron-script.sh`).

## Using docker run (a.k.a. "the boring way")

Is possible to run the same image using a sigle line docker command. It will be something like:

`docker run -d -v "./my-custom-script.sh:/cron-script.sh" nicosingh/rpi-cron "* * * * * root /cron-script.sh"`

Where:

`-d`: means to run in detached mode (in background).

`-v "./my-custom-script.sh:/cron-script.sh"`: will mount external scripts to be run in cron. The destination name has to be the same as the command script (in the example `cron-script.sh`).

`nicosingh/rpi-cron`: will be consuming this image.

`"* * * * * root /cron-script.sh"`: means to run `/cron-script.sh` every minute. This script must be placed inside our container (i.e. using a volume).
