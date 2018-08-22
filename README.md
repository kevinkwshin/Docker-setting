# Docker-setting
How to set GPU available Docker(Nvidia Docker) on Ubuntu


$ sudo groupadd docker

$ sudo usermod -aG docker $USER <-- change your user name here

-> log out & log in once

$ docker run hello-world
