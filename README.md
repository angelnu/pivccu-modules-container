# piVCCU modules deployer for Homematic CCU

This project created a container images that installs the piVCCU into a Linux based host.

The objective was deploying via container to reduce the dependencies on the host OS and
also make it easier for container and Kubernetes based platforms.

This project is abandoned.

## Acknoledgements

All kernel modules used here come from the [piVCCU](https://github.com/alexreinert/piVCCU) project.

## How to build

`docker build -t pivccu-modules-container`

## How to run

### Requirements

- sources for the running kernel must be installed in the host
- kernel must be at least 4.14

### Comamand

`docker run --rm -v /lib/modules:/lib/modules -v /usr/src:/usr/src_host modules`

**NOTE**: this command will add the binary kernel modules to the `/lib/modules/<running kernel>/updates/dkms` folder.

If the modules are already installed for the running kernel the module will not replace them

## Missing

- [ ] Detect if the installed kernel modules are in a different version and replace them when this is the case.
- [ ] Add to different exploiters.
- [ ] Decide if it stays as stand-alone project or integrated into another larger project.
