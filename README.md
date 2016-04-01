# lnmp
Vagrant box for PHP projects, using PHP 7.0

[Vagrant Cloud](https://atlas.hashicorp.com/at15/boxes/lnmp7)

## Include

- Ubuntu 14.04 LTS
- Nginx 1.8 `ppa:nginx/stable`
- MySQL 5.5
- PHP 5.6 `ppa:ondrej/php5-5.6`
- Redis 3.07 `ppa:chris-lea/redis-server`
- Phpmyadmin 4.04

## Requirement

- Virtualbox 4.3+ (5.0 is tested, the guest addtion is working on windows, Mac user may
need to update TODO: the issue for brew cask installed vbox)
- Vagrant latest

## Usage

### Use the pre-built box

- `vagrant init at15/lnmp7`
- `vagrant up --provider virtualbox`

### Use this repo directly

- `git clone git@github.com:at15/lnmp.git`
- `cd lnmp`
- `git checkout feature/php7`
- `vagrant up` it will run the provision scripts

## Acknowledgement

- https://github.com/LukeXuan/atlas-centos7

## License

MIT
