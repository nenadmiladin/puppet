class directories {
    file {'/tmp/it_works.txt':
        ensure => present,
        mode => '0644',
        content => "It works on ${ipaddress_eth0}\nAt the agents works also\nAnother Test",
    }
}

node 'slave.us-east-2.compute.internal' {
  include directories
}
