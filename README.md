
# HashiCorp Packer templates


## Notes


### Before you start you sould define some environment variables:

- export ATLAS_TOKEN="[set token for vagrant connection]" __(required)__
- export ATLAS_USER="[set atlas username]" __(required)__
- export AUTHOR_NAME="[set name]" _(optional)_
- export AUTHOR_EMAIL="[set e-mail]" _(optional)_


### ...and you must have installed:


 - [Vagrant](https://www.vagrantup.com)
 - [Packer](https://www.packer.io)
 - [Virtualbox](https://www.virtualbox.org)
 

### Build inside "packer-template/alpine/alpine-3.8.1" directory


```bash
$ git clone https://github.com/eugene-panin/packer-templates.git
$ cd packer-templates/alpine/alpine-3.8.1
$ packer build alpine-3.8.1.json
```
### after building projact you can check your box in two ways:

1. You can download your box from the cloud by following the commands below
> ```sh
> $ mkdir [your_dir_name] && cd [your_dir_name]
> $ vagrant init [your_account_name]/alpine-3.8.1
> $ vagrant up
> ```

2. Also you can add your box from local path (into you build project) by following the commands below
> ```sh
> $ vagrant box add Alpine Linux-3.8.1-x86_64.box --name [your_box_name]
> $ mkdir [your_dir_name] && cd [your_dir_name]
> $ vagrant init [your_account_name]/alpine-3.8.1
> $ vagrant up
> ```