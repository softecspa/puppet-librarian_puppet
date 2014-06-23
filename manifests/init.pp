class librarian_puppet {

  case $::operatingsystem {
    'ubuntu': {
      if !defined(Package['rubygems']) {
        package{'rubygems':
          ensure  => present,
          before  => Package['librarian-puppet']
        }
      }

      package {'librarian-puppet':
        ensure    => '1.0.1',
        provider  => 'gem',
      }
    }
    'windows': {
      exec {'install librarian puppet':
        command => 'gem install librarian-puppet -v 1.0.1 --no-ri --no-rdoc'

      }
    }
  }
}
