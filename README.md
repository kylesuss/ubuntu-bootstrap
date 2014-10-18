## Usage

### Setup

```shell
$ sudo apt-get update
$ sudo apt-get install curl git
```

### Individual Modules

$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/modules/<MODULE NAME>.sh | bash

### Specific Environments

> Note that additonal -s flag and corresponding raw file path which is used in environment scripts to dynamically load modules.

```shell
$ sudo apt-get update
$ sudo apt-get install curl git
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash -s https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master
```