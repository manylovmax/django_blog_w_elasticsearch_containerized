# Instructions

## Requirements

OS: Ubuntu 20.04
RAM: ~500MB

The projects requires around 500MB of RAM, so 1GB RAM Ubuntu droplet (vps) on Digitalocean fits in.

## Installation for dev server

1. Install docker

```shell
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce
```

2. Install docker-compose

```shell
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

3. Clone the git repository
```shell
cd /var
mkdir www
cd www
git clone git@github.com:mmanylov/django_blog_real.git blog
cd blog
```

4. Add server domain/IP-address to the allowed hosts in .env.dev file

```DJANGO_ALLOWED_HOSTS = <address>```

5. Build and run the containers
```shell
docker-compose up -d --build
```

6. Migrate the database
```shell
cat dump/2018-05-22.sql | docker-compose exec -T db psql -U bloguser -W blog
```

7. Create the 'blog' index in Elasticsearch and index posts with init()
```shell
docker-compose exec web python manage.py shell
>>> from post.search import init
>>> init()
```
