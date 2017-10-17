class people::filaraujo::dotfiles inherits people::filaraujo {

    notify { "loading dotfiles": }

    $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
    $atom_dir = "/Users/${::luser}/.atom"

    # define dotfile repo
    repository { $dotfiles_dir:
        source  => 'filaraujo/dotfiles'
    }

    file{"${$atom_dir}":
        ensure  =>  directory,
        mode    =>  0755,
    }

    file { "aliases":
       ensure   => "link",
       path     => "/Users/${::luser}/.aliases",
       target   => "${dotfiles_dir}/.aliases",
       require  => Repository[$dotfiles_dir]
    }

    file { "atom_config":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/config.cson",
       target   => "${dotfiles_dir}/.atom/config.cson",
       require  => [File[$atom_dir], Repository[$dotfiles_dir]]
    }

    file { "atom_keymap":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/keymap.cson",
       target   => "${dotfiles_dir}/.atom/keymap.cson",
       require  => [File[$atom_dir], Repository[$dotfiles_dir]]
    }

    file { "atom_snippets":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/snippets.cson",
       target   => "${dotfiles_dir}/.atom/snippets.cson",
       require  => [File[$atom_dir], Repository[$dotfiles_dir]]
    }

    file { "atom_styles":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/styles.less",
       target   => "${dotfiles_dir}/.atom/styles.less",
       require  => [File[$atom_dir], Repository[$dotfiles_dir]]
    }

    file { "atom_init":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/init.coffee",
       target   => "${dotfiles_dir}/.atom/init.coffee",
       require  => [File[$atom_dir], Repository[$dotfiles_dir]]
    }

    file { "functions":
       ensure   => "link",
       path     => "/Users/${::luser}/.functions",
       target   => "${dotfiles_dir}/.functions",
       require  => Repository[$dotfiles_dir]
    }

    file { "gitconfig":
       ensure   => "link",
       path     => "/Users/${::luser}/.gitconfig",
       target   => "${dotfiles_dir}/.gitconfig",
       require  => Repository[$dotfiles_dir]
    }

    file { "jshint":
       ensure   => "link",
       path     => "/Users/${::luser}/.jshintrc",
       target   => "${dotfiles_dir}/.jshintrc",
       require  => Repository[$dotfiles_dir]
    }

    file { "zshrc":
       ensure   => "link",
       path     => "/Users/${::luser}/.zshrc",
       target   => "${dotfiles_dir}/.zshrc",
       require  => Repository[$dotfiles_dir]
    }

    file { "zsh-profile":
       ensure   => "link",
       path     => "/Users/${::luser}/.zprofile",
       target   => "${dotfiles_dir}/.zprofile",
       require  => Repository[$dotfiles_dir]
    }

}
