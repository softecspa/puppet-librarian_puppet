class librarian_puppet {

  if $::operatingsystem == 'ubuntu' {
    if !defined(Package['rubygems']) {
      package{'rubygems':
        ensure  => present,
        before  => Package['librarian-puppet']
      }
    }
  }

  package {'librarian-puppet':
    ensure    => '1.0.1',
    provider  => 'gem',
  }
}
