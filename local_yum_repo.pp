class local_yum_repo {

  # configure the repo we want to use
  yumrepo { 'epel_local':
    name => 'epel_local',
    descr    => 'Local repo holding company application packages',
    baseurl  => 'file:///packages/downloaded_rpms',
    enabled  => 1,
    gpgcheck => 0,
  }
  package { 'vim-enhanced':
    ensure => 'installed',
  }
}

node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
    include local_yum_repo
}
