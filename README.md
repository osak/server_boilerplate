# Prerequisites

    $ chef gem install knife-zero

# How to run

    $ knife zero bootstrap (host) --sudo
    $ knife node list
    $ knife node run_list add (node) 'recipe[server_boilerplate]'
    $ knife zero converge (host or nodename)
