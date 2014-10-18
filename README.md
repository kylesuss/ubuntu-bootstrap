## Usage

> Tested on Ubuntu 14.04 x64

### Setup

```shell
$ sudo apt-get update
$ sudo apt-get --assume-yes install curl git build-essential tcl8.5
```

### Modules

To install an individual module at a time, use the following format:

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/modules/<MODULE NAME>.sh | bash
```

### Environments

Environment include their language module by default. In order to load additional modules, add a flag using the `--modulename` convention. 

**Example:**

> Note that additonal `-s --` flags on the curl command which allows for passing arguments and additional flags. 

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash -s -- --redis
```

Modules are generated using a default URL corresponding to the master branch on this repository. If for some reason you need to change that URL, pass the -url flag with a corresponding endpoint.

> Note the way environment scripts structure URLs before you pass the -url flag. `$URL/modules/ruby.sh`

**Example:**

```shell
$ curl https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master/ruby_env.sh | bash -s -- -url http://code.something.com/ubuntu --redis
```

### Available Modules
- [x] ruby
- [x] redis
- [ ] postgres
- [ ] monit
- [ ] nginx