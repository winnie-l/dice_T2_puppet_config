class site::firewall::dice {
  firewall { '100 SSH from CSE':
    proto  => 'tcp',
    action => 'accept',
    dport  => 22,
    source => '92.234.12.153/16',
  }

  firewall { '101 SSH from VPN':
    proto  => 'tcp',
    action => 'accept',
    dport  => 22,
    source => '172.21.0.0/16',
  }

  firewall { '102 Trust UoB network':
    proto  => 'all',
    action => 'accept',
    source => '137.222.0.0/16',
  }

  firewall { '103 Trust internal network':
    proto  => 'all',
    action => 'accept',
    source => '10.132.0.0/16',
  }

  firewall { '104 drop all-systems.mcast.net':
    proto       => 'igmp',
    action      => 'drop',
    destination => '224.0.0.1',
  }

}
