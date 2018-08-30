default[:zm][:user] = 'www-data'
default[:zm][:group] = 'video'

default[:zm][:timezone] = 'EST'

default[:zm][:repo][:uri] = 'ppa:iconnor/zoneminder'


default[:zm][:prerequisite_packages] = %W[
    mariadb-server
    mariadb-client
    apache2
    php7.0
    php7.0-gd
    libapache2-mod-php7.0
    php7.0-mysql
    php7.0-curl
    php7.0-gd
    php7.0-intl
    php-pear
    php-imagick
    php7.0-imap
    php7.0-mcrypt
    php-memcache
    php7.0-pspell
    php7.0-recode
    php7.0-sqlite3
    php7.0-tidy
    php7.0-xmlrpc
    php7.0-xsl
    php7.0-mbstring
    php-gettext php-apcu
    software-properties-common
    vim
]

default[:zm][:zm_packages] = %W[
    zoneminder
]


default[:zm][:php][:config] = '/etc/php/7.0/apache2/php.ini'
default[:zm][:php][:config_template] = 'php.ini.erb'
