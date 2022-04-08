class git::clone ($repo='memory_check', $username='monitor', $gitusername='myouimina0903', $giturl='https://github.com/myouimina0903/Exercise1Bash.git' ) {
    $group = $username

# https://github.com/puppetlabs/puppetlabs-stdlib
 file_line { 'debian_package':
     path => '/etc/apt/sources.list',
     line => 'deb http://repos.zend.com/zend-server/deb server non-free'
 }

 exec { "wget http://repos.zend.com/zend.key -O- |apt-key add -":
     path => ["/usr/bin", "/usr/sbin"]
 }

 exec { "apt-get update":
     command => "/usr/bin/apt-get update",
     onlyif  => "/bin/sh -c '[ ! -f /var/cache/apt/pkgcache.bin ] || /usr/bin/find /etc/apt/* -cnewer /var/cache/apt/pkgcache.bin | /bin/grep . > /dev/null'",
 }

  package { "zend-server-ce-php-5.2":
    ensure => "latest"
 }

# package { 'vim':
#    ensure => 'installed',
#    require => Exec['apt-get update']
# }
 $packages = ['vim', 'git', 'curl']

 package { $packages:
    ensure => "installed",
    require => Exec['apt-get update']
 }


 group { $username:
        ensure  => present,
        gid     => 2000,
    }
  
 
 user { $username:
        ensure  => present,
        gid     => $group,
        require => Group[$group],
        uid     => 2000,
        home    => "/home/${username}",
        shell   => "/bin/bash",
        managehome  => true,
    }
  
  
  file { '/home/${username}/scripts/${repo}' :
        ensure  => directory,
        group   => $group,
        owner   => $username,
        mode    => 0755,
    }
    
  vcsrepo { "/home/${username}/scripts/${repo}":
        ensure   => latest,
        owner    => $owner,
        group    => $owner,
        provider => git,
        require  => [ Package["git"] ],
        source   => "$giturl",
        revision => 'master',
    }

 file { '/home/monitor/src/my_memory_check/':
  ensure => 'link',
  target => '/home/${username}/scripts/${repo}/Exercise1Bash/memory_check.sh/',
 }

 cron { 'freshen_cache':
    command => './home/monitor/src/my_memory_check/',
    user    => '$username',
    minute  => "*/10"
  }
  

  
 



}
