script "add jenkins key" do 
  interpreter "bash"
  code "wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -"
end

script "add jenkins repo to list" do
  interpreter "bash"
  code "echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list"
end

package "jenkins" do 
  action :install
end
