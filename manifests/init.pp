class host_website {
 class { 'nginx': }
  nginx::vhost { 'first.example.com':
    port    => '8010',
    docroot => '/var/www/first'
  }
  nginx::vhost { 'second.example.com':
    port    => '8011',
    docroot => '/var/www/second'
  }
 File {"/var/www/first/index1.html":
                ensure => present,
		source => 'puppet:///modules/host_website/index1.html',
        }
 File {"/var/www/second/index2.html":
                ensure => present,
		source => 'puppet:///modules/host_website/index2.html',
        }
}
