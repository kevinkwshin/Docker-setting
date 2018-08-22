# Docker-setting
How to set GPU available Docker(Nvidia Docker) on Ubuntu


$ sudo groupadd docker

$ sudo usermod -aG docker $USER

-> log out & log in once

to check
$ docker run hello-world
