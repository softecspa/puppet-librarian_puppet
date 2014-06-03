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
    ensure    => installed,
    provider  => 'gem',
  }

}
