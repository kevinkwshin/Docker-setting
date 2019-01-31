# Official stable Docker setup on Ubuntu
https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce-1

# Nvidia-Docker setting
How to set GPU available Docker(Nvidia Docker) on Ubuntu

__Set up your GPU driver before you go!__

<pre><code># If you have nvidia-docker 1.0 installed: we need to remove it and all existing GPU containers
docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f
sudo apt-get purge -y nvidia-docker

# Add the package repositories
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
  sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
  sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update


# Install nvidia-docker2 and reload the Docker daemon configuration
sudo apt-get install -y nvidia-docker2
sudo pkill -SIGHUP dockerd

# Test nvidia-smi with the latest official CUDA image
docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi
</pre></code>

Lastly, if you want docker with out sudo command,
<pre><code>sudo groupadd docker
sudo usermod -aG docker $USER <-- change your user name here
</code></pre>
log out & log in once
<pre><code>docker run hello-world
</code></pre>

# How to use Docker w/o sudo
https://docs.docker.com/install/linux/linux-postinstall/
