### phxpaxos-vagrant

This project provides an isolated environment to install, build and develop phxpaxos.

#### Requirements

* [vagrant](https://releases.hashicorp.com/vagrant/1.9.0/)
* [virtualbox](http://download.virtualbox.org/virtualbox/5.1.10/)

#### Setup

```
$ git clone https://github.com/buptmiao/Phxpaxos-vagrant.git

$ cd Phxpaxos-vagrant

$ vagrant up
```

The source code locates at **/vagrant/phxpaxos** in the VM.
```
$ vagrant ssh

$ cd /vagrant/phxpaxos
```
And it is synced with $pwd/phxpaxos in host machine, you can look into in with your favorite editor and build your changes in VM.

#### Enjoy yourself!
