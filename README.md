### phxpaxos-vagrant

This project provides an isolated environment to install, build and develop phxpaxos.

#### Requirements

* [vagrant](https://releases.hashicorp.com/vagrant/1.9.0/)
* [virtualbox](http://download.virtualbox.org/virtualbox/5.1.10/)

#### Setup

```
$ cd phxpaxos/tools/vagrant

$ vagrant up
```

The source code locates at **/home/vagrant/src/phxpaxos** in the VM.
```
$ vagrant ssh

$ cd src/phxpaxos
```
And it is synced with $pwd/src in host machine, you can look into in with your favorite editor and build your changes in VM.

#### Enjoy yourself!
