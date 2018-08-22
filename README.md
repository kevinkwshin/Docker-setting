# Docker-setting
How to set GPU available Docker(Nvidia Docker) on Ubuntu



Lastly, if you want docker with out sudo command,
<pre><code>sudo groupadd docker
sudo usermod -aG docker $USER <-- change your user name here
</code></pre>
log out & log in once
<pre><code>docker run hello-world
</code></pre>
