include_recipe 'build-essential'

package 'install_basic_packages' do
  package_name ['vim', 'git', 'zsh']
end
