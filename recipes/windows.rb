# Download the Notepad++ installer
remote_file 'C:\\Temp\\npp.8.5.6.Installer.x64.exe' do
  source 'https://download.notepad-plus-plus.org/npp.8.5.6.Installer.x64.exe'
  action :create
end

# Install Notepad++
windows_package 'install notepad' do
  source 'C:\\Temp\\npp.8.5.6.Installer.x64.exe'
  installer_type :custom
  options '/s'
  action :install
end

  
  