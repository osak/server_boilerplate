return if File.exists?('/usr/local/bin/ghc')

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
