# piVCCU modules deployer for Homematic CCU

This project created a container images that installs the piVCCU into a Linux based host.

The obojective is deploying via container to reduce the dependencies on the host OS and
also make it easier for container and Kubernetes based platforms.

It is WIP so it might still change

## How to build

`docker build -t pivccu-modules-container`

## How to run

### Requirements

- sources for the running kernel must be installed in the host
- kernel must be at least 4.14

`docker run --rm -v /lib/modules:/lib/modules -v /usr/src:/usr/src_host modules`

## Acknoledgements

All kernel modules used here come from the [piVCCU](https://github.com/alexreinert/piVCCU) project.