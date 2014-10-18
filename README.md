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

The Ruby module is included by default.

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash -s -- -url https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master
```
In order to load additional modules, add the corresponding flag to the end of the command.

Modules
* --redis