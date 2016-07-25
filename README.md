# Prerequisites

    $ chef gem install knife-zero

# How to run

    $ knife zero bootstrap (host) --sudo
    (Edit nodes/(host).json and add "role[web]" to run_list)
    $ knife role from file roles/web.json
    $ knife zero converge (host or nodename)
