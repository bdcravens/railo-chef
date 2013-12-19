# Download Railo 

# http://www.getrailo.org/down.cfm?item=/railo/remote/download/4.1.1.009/tomcat/linux/railo-4.1.1.009-pl0-linux-x64-installer.run&thankyou=true
remote_file "/opt/files/railo-#{node[:railo][:version]}-#{node[:railo][:pl]}-linux-x64-installer.run" do
  source "http://www.getrailo.org/railo/remote/download/#{node[:railo][:version]}/tomcat/linux/railo-#{node[:railo][:version]}-#{node[:railo][:pl]}-linux-x64-installer.run"
  action :create_if_missing
  mode "0777"
  owner "root"
  group "root"
end
# install Railo
execute "./railo-#{node[:railo][:version]}-#{node[:railo][:pl]}-linux-x64-installer.run --mode unattended --railopass #{node[:railo][:password]}" do
  action :run
  user "root"
  cwd "/opt/files/"
  creates "/opt/railo/railo_ctl"
end



