
- 安裝虛擬開發環境需搭配
  * Oracle VirtualBox
  * Vagrant
  
- 直接下載 ununtu vagrant映象檔
  * https://vagrantcloud.com/ubuntu

- 找到自己要裝的vagrant
  * >vagrant init ubuntu/trusty32  //會創建一個Vagrantfile文件
  * >vagrant up  //開始下載這個vagrant box
  * >vagrant destory //刪除

- Windows
  * https://atlas.hashicorp.com/lmayorga1980/boxes/windows7-sp1
    * >vagrant init Imayorga1980/window7-sp1
    * >vagrant up
    
- 變更vagrant記憶體，編輯Vagrantfile檔案，輸入以下字樣。存檔後，再執行 >vagrant reload
  ```
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  ```

- 登入進入虛擬機器
  * >vagrant ssh(mac)
  * windows可用SSH工具連接( IP：127.0.0.1 vagrant/vagrant )
  * >whoami //會是vagrant
  
- 以不同帳號登入虛擬機
  * >ssh account@127.0.0.1 -p 2222
  
- 設定虛擬機區網IP，編輯Vagrant檔案，輸入以下字樣。存檔後，再執行 >vagrant reload
  * config.vm.network :private_network, ip: "192.168.12.25"
  
- 設定虛擬機與區網IP對應
  * >sudo vim /etc/hosts(mac or linux)
  * windows編輯 C:\Windows\System32\drivers\etc\hosts，增加一行 eg：192.168.12.25     vagrant.dev
  
- 共享文件夾
  * 宿主機：Vagrantfile所在資料夾
  * Vagrant虛擬機：/vagrant
  
- apache2目錄下創建
  ```
  $cd /etc/apache2/sites-avaiable
  $sudo vim ubuntu_trusty32.conf
  ```
  
  * 輸入以下內容，把共享文件夾架設成一個網站
  ```
  <VirtualHost *:80>
  ServerName vagrant.dev
  DocumentRoot /vagrant/
  </VirtualHost>
  
  $cd /etc/apache2/sites-avaiable
  $sudo a2ensite ubuntu_trusty32.conf  // 創建sites enable當中的符號鍊結

  $sudo rm /etc/apache2/sites-enabled/000-default.conf  // 刪除 sites enable 當中預設的網站
  $sudo service apache2 reload // 重新加載apache2配置文件
  ```
  
  * 此時訪問會出現無權限錯誤訊息
  ```
  $vim /etc/apache2/apache2.conf  // 搜索denied，可以看到默認所有的目錄都是訪問被拒絕的，除了兩個特殊位置：/user/share，/var/www/
  ```
  * 解決方式
  ```
  $sudo rm /var/www // 1.先刪除
  $sudo ln -fs /vagrant/ /var/www  // 2.創建符號鍊結，把共享文件夾放到這個位置
  $sudo vim /etc/apache2/sites-available/ubuntu_trusty32.conf  // 3.修改配置文件
  <VirtualHost *:80>
    ServerName vagrant.dev
    DocumentRoot **/var/www/**
  </VirtualHost> 
  $sudo service apache2 reload // 重新加載apache2配置文件
  ```
  
  
  
  
  
  
  
  
  
