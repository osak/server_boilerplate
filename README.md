# Prerequisites

    $ chef gem install knife-zero

# How to run

    $ berks vendor vendor
    $ knife zero bootstrap (host) --sudo
    $ knife role from file roles/web.json
    $ knife node list
    $ knife node run_list (node) 'role[web]'
    $ knife zero converge (host or nodename)
