## Usage

> Tested on Ubuntu 14.04 x64

### Setup

```shell
$ sudo apt-get update
$ sudo apt-get install curl git
```

### Modules

To install an individual module at a time, use the following format:

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/modules/<MODULE NAME>.sh | bash
```

### Environments

The Ruby module is included by default.

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash
```
In order to load additional modules, add the corresponding flag to the end of the command. Example:

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash -s -- --redis
```
> Note that additonal -s flag on the curl command which allows for passing arguments.

> Modules are generated using a default url corresponding to the master branch on this repository. If for some reason you need to change that URL, pass the -url flag.

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash -s -- -url http://code.something.com/ubuntu --redis
```

### Available Modules
* --redis