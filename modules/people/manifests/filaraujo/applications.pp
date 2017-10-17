class people::filaraujo::applications inherits people::filaraujo {

    notify { "loading applications": }

    # browsers
    include chrome::beta
    include chrome::canary
    include firefox
    include firefox::nightly
    include opera

    # development
    include charles
    include iterm2::dev
    include ohmyzsh
    include virtualbox

    #phantomjs
    include phantomjs

    # atom
    include atom

    # dashlane
    include dashlane

    #storage
    include dropbox
    include googledrive

    #android
    include android::sdk
    include android::tools
    include android::platform_tools
    include android::studio

}
