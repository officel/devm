# -*- mode: ruby -*-

VAGRANTFILE_API_VERSION = "2"

# プロジェクト名
PROJECT_CODE  = "devm"

# サーバ名に使用
PROJECT_CODE3 = "dev"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "bento/centos-7.3"

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end

  if Vagrant.has_plugin?("vagrant-cachier")
    # yum 等のリクエストをキャッシュして再作成を高速化する
    config.cache.scope = :box
  end

  config.ssh.insert_key = false

 config.vm.define :ctl, primary: true do | ctl |
    ctl.vm.hostname = "ctl"
    repos_dir = File.expand_path("#{File.dirname(__FILE__)}/../../../")+"/"
    ctl.vm.synced_folder "#{repos_dir}", "/home/vagrant/repos", :create => true, :owner=> 'vagrant', :group=> 'vagrant', :mount_options => ["uid=48,gid=48,dmode=0777,fmode=0777"]
    ctl.vm.network "private_network", ip: "192.168.33.3"
    ctl.vm.provider "virtualbox" do |v|
      v.name = PROJECT_CODE3 + "-ctl"
      v.memory = 4096
      v.cpus = 2
    end
  end

end
