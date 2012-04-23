package "mysql-server" do 
  version "5.1"
  action :install
end
  
package "mysql-client" do
  version "5.1"
  action :install
end

package "libmysqlclient-dev" do
  action :install
end