class people::filaraujo {

    notify { 'class people::filaraujo declared': }

    $my_homedir = "/Users/${::luser}"

    # git
    include git
    git::config::global { 'user.email':
        value  => 'filipe.alves.araujo@gmail.com'
    }
    git::config::global { 'user.name' :
        value  => 'Filipe Araujo'
    }

    include people::filaraujo::applications
    include people::filaraujo::dotfiles

}
