## FEEDit

## Build status
in process


## Code style
Please use rubocop as linter
```shell script
bundle exec rubocop
``` 

## Tech

This project uses a number of open source projects to work properly:
* [Rails] 6.0.3.1
* [Devise]
* [Bootstrap]
* [jQuery]
* [Ruby] 2.6.6
* and many more [Gemfile](Gemfile)

## Installation
Installtion for [Ubuntu](#ubuntu), [macOS](#macOS) and [Windows](#windows)

### Ubuntu

#### Installing Ruby

##### Dependencies

```shell script
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```
##### Install rbenv

```shell script
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.6.6
rbenv global 2.6.6 # overwrite current global version
ruby -v
```
##### Install bundler

```shell script
gem install bundler
rbenv rehash
```
### macOS

Please follow [this](https://gorails.com/setup/osx/10.15-catalina) guide an choose your macOS version
### Windows

You can choose between Bash on Ubuntu or download and install [ruby](https://rubyinstaller.org/downloads/) and [rails](http://railsinstaller.org/en) manually. If you used the manually way, you can use [XAMPP](https://www.apachefriends.org/de/index.html) to install a mysql-server
#### Bash on Ubuntu

##### Installing the Windows Subsystem for Linux

```shell script
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
1. Install [Ubuntu from the Microsoft Store](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6)
2. Open Ubuntu in the Start menu
    1. At the first time, it will ask for a new user
##### Installing Ruby

###### Install Dependencies

```shell script
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev
```
###### Install rbenv

```shell script
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.7.1
rbenv global 2.7.1
ruby -v
```
###### Install bundler

```shell script
gem install bundler
rbenv rehash
```
### Install NodeJS and Yarn

```shell script
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt-get install -y nodejs yarn
```
### Installing NodeJS Packages with yarn

```shell script
yarn install
```
### Installing Gems

```shell script
bundle install --path vendor/bundle
```
### Setting up a Database

If you installed a mysql server, you can skip to [setup rails database](####Setup rails database)
#### Setting up MySQL

```shell script
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
```
#### Setup rails database 

You can copy this [database.yml](config/database.example.yml)
```shell script
bundle exec rails db:create
bundle exec rails db:migrate
```

### How to use
#### Run server
```shell script
bundle exec rails s
```
#### Figaro
We use [figaro](https://github.com/laserlemon/figaro) to manage our environments. You can copy our [application.yml](config/application.example.yml) or can add the environments

## API Reference

Todo

## Tests

Tests can be started by: 
```shell script
bundle exec rails test
```

#### Anything else that seems useful

## License
A short snippet describing the license (MIT, Apache etc)

[rails]: <https://rubyonrails.org/>
[devise]: <https://github.com/heartcombo/devise>
[bootstrap]: <https://getbootstrap.com/>
[jQuery]: <https://api.jquery.com/>
[ruby]: <https://www.ruby-lang.org/de/>
