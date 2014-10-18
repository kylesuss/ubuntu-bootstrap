## Usage

### Setup

```shell
$ sudo apt-get update
$ sudo apt-get install curl git
```

### Individual Modules

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/modules/<MODULE NAME>.sh | bash
```

### Specific Environments

> Note that additonal -s flag on the curl command and corresponding raw file path which is used in environment scripts to dynamically load modules.

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash -s https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master
```