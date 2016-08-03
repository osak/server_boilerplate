include_recipe 'ruby_build'
include_recipe 'ruby_rbenv::system'
include_recipe 'poise-python'
include_recipe 'java_se'

unless File.exists?('/usr/local/bin/ghc')
  remote_file '/tmp/haskell-platform.tar.gz' do
    source 'https://haskell.org/platform/download/8.0.1/haskell-platform-8.0.1-unknown-posix--minimal-x86_64.tar.gz'
    mode '0644'
  end

  execute 'extract_package' do
    command 'tar xf /tmp/haskell-platform.tar.gz -C /tmp'
  end

  execute 'run_installer' do
    cwd '/tmp'
    command 'bash ./install-haskell-platform.sh'
  end

  package 'install_libgmp' do
    package_name 'libgmp-dev'
  end
end

unless File.exists?('/usr/bin/fsharpc')
  apt_repository 'fsharp' do
    uri 'http://download.mono-project.com/repo/debian'
    distribution 'wheezy'
    components ['main']
    key '3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF'
    keyserver 'hkp://keyserver.ubuntu.com:80'
  end

  package 'fsharp' do
    package_name 'fsharp'
  end
end
