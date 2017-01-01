# lnmp
Vagrant box for PHP projects

For PHP5.X see [legacy/ubuntu-14.04-PHP5](https://github.com/at15/lnmp/tree/legacy/ubuntu-14.04-PHP5) branch.
The [feature/php7](https://github.com/at15/lnmp/tree/feature/php7) branch is also deprecated, PHP7 is now in the master branch.

- [Vagrant Cloud PHP7.x](https://atlas.hashicorp.com/at15/boxes/lnmp7/)
- [Vagrant Cloud PHP5.x](https://atlas.hashicorp.com/at15/boxes/lnmp/)

## Include

- Ubuntu 16.04 LTS
- Nginx 1.10.1 `ppa:nginx/stable`
- MySQL 5.7
- PHP 7.1 `ppa:ondrej/php`
- Redis 3.07 `ppa:chris-lea/redis-server`
- Phpmyadmin 4.5.4.1 (nginx config in `/etc/nginx/conf.d/phpmyadmin.conf`)

## Requirement

- Virtualbox 4.3+ (5.0 is tested, the guest addtion is working on windows, Mac user may
need to update TODO: the issue for brew cask installed vbox)
- Vagrant latest
- Host OS: Fedora 25, Ubuntu 16.10, Windows 10 (not tested but should work)

## Usage

### Use the pre-built box

Deprecated, this repo will be moved to https://github.com/dyweb, the box on Atlas will also change.

- `vagrant init at15/lnmp7`
- `vagrant up --provider virtualbox`

### Use this repo directly

- `git clone git@github.com:at15/lnmp.git`
- `cd lnmp`
- `vagrant up` it will run the provision using Ansible. see [site.yml](site.yml) for detail
- ssh into the vm and run `util/clean.sh` to clean up apt stuff before you package the box
- `vagrant package` to build the new box
- upload it to [Atlas](https://atlas.hashicorp.com/boxes/search?utm_source=vagrantcloud.com&vagrantcloud=1)

## Acknowledgement

- https://github.com/LukeXuan/atlas-centos7
- https://github.com/leonidas/ansible-nvm
- https://github.com/arbabnazar/ansible-roles/tree/master/LEMP

## License

MIT
