##Install in Amazon Ubuntu
#!/bin/bash
sudo apt update -y

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -   # apt-key is deprecated: newer Debian/Ubuntu versions prefer storing keys as separate files under trusted.gpg.d instead of using apt-key add.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/trusted.gpg.d/docker.gpg > /dev/null  # Use this to save the Docker GPG key as a file under trusted.gpg.d (preferred over apt-key

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

sudo apt update -y

apt-cache policy docker-ce -y

sudo apt install docker-ce -y

#sudo systemctl status docker

sudo chmod 777 /var/run/docker.sock
