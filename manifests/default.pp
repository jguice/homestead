package { 'silversearcher-ag':
  ensure => 'installed'
}

file { 'db script':
  path    => '/usr/local/bin/d',
  mode    => '0755',
  content => "#!/bin/bash
    mysql -uhomestead -psecret
  "
}

file { 'bash_profile':
  path    => '/home/vagrant/.bash_profile',
  mode    => '0644',
  owner   => 'vagrant',
  group   => 'vagrant',
  content => 'set -o vi
    export EDITOR=vim
    . ~/.bashrc'
}