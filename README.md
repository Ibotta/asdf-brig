# asdf-brig

[![Build Status](https://travis-ci.com/Ibotta/asdf-brig.svg?branch=master)](https://travis-ci.com/Ibotta/asdf-brig)

## Installation

This is a plugin for the [`asdf`](https://github.com/asdf-vm/asdf) project.
To use this plugin, first [install asdf](https://github.com/asdf-vm/asdf#setup).

Then, install the plugin:

```console
asdf plugin-add brig https://github.com/Ibotta/asdf-brig.git
```

## Usage

This plugin works just like all other asdf plugins. If you're unfamiliar with
asdf, take a look at [their docs](https://github.com/asdf-vm/asdf#usage).

TLDR;

```console
root@313545a3a332:/# asdf install brig v0.18.0
root@313545a3a332:/# asdf global brig v0.18.0
root@313545a3a332:/# brig version
v0.18.0
root@313545a3a332:/# asdf install brig v0.17.0
root@313545a3a332:/# brig version
v0.18.0
root@313545a3a332:/# ASDF_BRIG_VERSION=v0.17.0 brig version
v0.17.0
```

## Development

We provide a docker container that provides a sandbox for testing the asdf logic
without affecting your local environment.

To test the plugin inside the Docker container, execute these commands in this
repository.

```console
docker build -t asdf-test:dev .
docker run -it --rm -v `pwd`:/root/.asdf/plugins/brig --entrypoint bash asdf-test:dev
```

Then you'll be in a docker container where you can test this logic out. Note
that we mount through the code into the `plugins` directory for testing.

```console
root@4f0d69e8bea6:/# asdf install brig v0.18.0
Downloading brig from https://github.com/Azure/brigade/releases/download/v0.18.0/brig-linux-amd64 to /tmp/brig_Mi057PX/brig-v0.18.0
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   607    0   607    0     0   1653      0 --:--:-- --:--:-- --:--:--  1649
100 30.8M  100 30.8M    0     0  2464k      0  0:00:12  0:00:12 --:--:-- 4997k
Creating bin directory
Cleaning previous binaries
Copying binary
root@4f0d69e8bea6:/# asdf list brig
  v0.18.0
```
