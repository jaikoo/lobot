

execute "add Node.js to repo list" do
	command "echo deb http://ftp.us.debian.org/debian/ sid main > /etc/apt/sources.list.d/sid.list"	
end

execute "update repo cache" do
	command "apt-get update"
end

package "nodejs" do
	action :install
end



  
   
    