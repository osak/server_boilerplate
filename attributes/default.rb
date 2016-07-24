default['rbenv']['user_installs'] = [
  {
    user: 'vagrant',
    rubies: ['2.3.1'],
    global: '2.3.1',
    gems: {
      '2.3.1' => [
          {name: 'bundler'}
      ]
    }
  }
]
default['rbenv']['rvm_download']['enable'] = false
default['poise-python']['install_python2'] = false
default['poise-python']['install_python3'] = false
