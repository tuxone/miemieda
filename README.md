# lnmp
Vagrant box for PHP projects

For PHP7.0 see [feature/php7](https://github.com/at15/lnmp/tree/feature/php7) branch.

- [Vagrant Cloud](https://atlas.hashicorp.com/at15/boxes/lnmp/)
- [Vagrant Cloud PHP7.0](https://atlas.hashicorp.com/at15/boxes/lnmp7/)

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

repalce `at15/lnmp` with `at15/lnmp7` if you want to use PHP7.0

- `vagrant init at15/lnmp`
- `vagrant up --provider virtualbox`

### Use this repo directly

checkout to `feature/php7` branch if you want to use PHP7.0

- `git clone git@github.com:at15/lnmp.git`
- `cd lnmp`
- `vagrant up` it will run the provision scripts

## Acknowledgement

- https://github.com/LukeXuan/atlas-centos7

## License

MIT
