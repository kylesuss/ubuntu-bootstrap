![Ubuntu Bootstrap](http://i.imgur.com/a5yWkkk.png)

Bash scripts to bootstrap a fresh Ubuntu server w/ various tools.

## Usage

1. Run setup process
2. Install either (1) individual modules or (2) a full environment

> Tested on Ubuntu 14.04 x64

### Setup

```shell
$ sudo apt-get update
$ sudo apt-get --assume-yes install curl git build-essential tcl8.5
```

### Available Modules
- [x] ruby
- [x] redis
- [x] postgres
- [ ] monit
- [ ] nginx

### Installation

***

#### Modules

To install one individual module at a time, use the following format:

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/modules/<MODULE NAME>.sh | bash
```

#### Environments

Environments include their language module by default. In order to load additional modules, add a flag using the `--modulename` convention. 

**Example:**

> Note that additonal `-s --` flags on the curl command after `| bash` which allows for passing arguments and additional flags. 

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash -s -- --redis
```

**Changing The URL**

Modules are generated using a default URL corresponding to the master branch on this repository. If for some reason you need to change that URL, pass the -url flag with a corresponding endpoint.

**Example:**

> Note the way environment scripts structure URLs before you pass the -url flag. `$URL/modules/<MODULE_NAME>.sh`

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash -s -- -url http://code.something.com/ubuntu --redis
```
