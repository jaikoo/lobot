unless File.exists?("/etc/apt/sources.list.d/10gen.list")
  execute "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10"
  execute "sudo echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/10gen.list"
  execute "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10"
  execute "sudo apt-get update"
end

package "mongodb-10gen" do 
  action :install
end



