# KodeKloud Task - Make an passwordless ssh connection from jump host to the
# three app nodes using the respectable sudo user on the nodes

class ssh_node1 {
        ssh_authorized_key { 'root@jump_host':
          ensure => present,
          user   => 'tony',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxNCpKrMkJoNxNID2R8uLOr2sW4AA4GehIL042jmBq5+SaLP9+iM6pJKL/kstJ3a9PezBs5QOclZ5Y9YUUEe2TTYlNPEcmhAhBQrlgfdZYfIUuPgN34QNCPiOXPVX6xZB0faUS/0dWoAU3qZKPmMOnK60/f0f8mvsB4U+X/LTaDARVVCwjiv4AaeL0tOZzU1lix2KCCjJyZlB7cUP7vjrLZo3E5Z+skT5sxHramQ8c3jb6/7RYdGPHxZkacJ28Ov1o8W+qkYzoVOtU5Eh3RqMkKBEpld5Tn5oG7f0wki1Sl0A2pvB0YrzC0sxRhbKiCsZmwo8dESw8PpXW841uX7Ab',
        }
	file { '/home/tony/.ssh':
          mode => '0700',
        }
	file { '/home/tony/.ssh/authorized_keys':
          mode => '0640',
        }
}

class ssh_node2 {
        ssh_authorized_key { 'root@jump_host':
          ensure => present,
          user   => 'steve',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxNCpKrMkJoNxNID2R8uLOr2sW4AA4GehIL042jmBq5+SaLP9+iM6pJKL/kstJ3a9PezBs5QOclZ5Y9YUUEe2TTYlNPEcmhAhBQrlgfdZYfIUuPgN34QNCPiOXPVX6xZB0faUS/0dWoAU3qZKPmMOnK60/f0f8mvsB4U+X/LTaDARVVCwjiv4AaeL0tOZzU1lix2KCCjJyZlB7cUP7vjrLZo3E5Z+skT5sxHramQ8c3jb6/7RYdGPHxZkacJ28Ov1o8W+qkYzoVOtU5Eh3RqMkKBEpld5Tn5oG7f0wki1Sl0A2pvB0YrzC0sxRhbKiCsZmwo8dESw8PpXW841uX7Ab',
        }
	file { '/home/steve/.ssh':
          mode => '0700',
        }
	file { '/home/steve/.ssh/authorized_keys':
          mode => '0640',
        }
    }

class ssh_node3 {
        ssh_authorized_key { 'root@jump_host':
          ensure => present,
          user   => 'banner',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxNCpKrMkJoNxNID2R8uLOr2sW4AA4GehIL042jmBq5+SaLP9+iM6pJKL/kstJ3a9PezBs5QOclZ5Y9YUUEe2TTYlNPEcmhAhBQrlgfdZYfIUuPgN34QNCPiOXPVX6xZB0faUS/0dWoAU3qZKPmMOnK60/f0f8mvsB4U+X/LTaDARVVCwjiv4AaeL0tOZzU1lix2KCCjJyZlB7cUP7vjrLZo3E5Z+skT5sxHramQ8c3jb6/7RYdGPHxZkacJ28Ov1o8W+qkYzoVOtU5Eh3RqMkKBEpld5Tn5oG7f0wki1Sl0A2pvB0YrzC0sxRhbKiCsZmwo8dESw8PpXW841uX7Ab',
        }
	file { '/home/banner/.ssh':
          mode => '0700',
        }
	file { '/home/banner/.ssh/authorized_keys':
          mode => '0640',
        }
    }

node 'stapp01.stratos.xfusioncorp.com' {
  include ssh_node1
}

node 'stapp02.stratos.xfusioncorp.com' {
  include ssh_node2
}

node 'stapp03.stratos.xfusioncorp.com' {
  include ssh_node3
}
