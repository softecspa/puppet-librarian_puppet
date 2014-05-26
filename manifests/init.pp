class librarian_puppet {

  package {'librarian-puppet':
    ensure    => installed,
    provider  => 'gem',
  }

}
