class yumgroup {

  # list the available groups with yum grouplist
  yum::group { 'Development Tools':
    ensure  => present,
    timeout => 300,
  }
}
node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
    include yumgroup
}
