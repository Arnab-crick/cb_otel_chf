remote_file "C:\Program Files" do
source 'https://download.notepad-plus-plus.org/npp.8.5.6.Installer.x64.exe'
action :create
end


windows_package "install notepad" do
  source 'C:\Program Files\npp.8.5.6.Installer.x64.exe'
  installer_type :custom
  options: '/s'
  action :install
 end
  
  