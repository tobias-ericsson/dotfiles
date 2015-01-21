exec {"apt-get update":

path => "/usr/bin",

}

package {"curl":

ensure => present,

require => Exec["apt-get update"],

}

package {"gradle":

ensure => present,

require => Exec["apt-get update"],

}

package {"maven2":

ensure => present,

require => Exec["apt-get update"],

}

package {"memcached":

ensure => present,

require => Exec["apt-get update"],

}

package {"nodejs":

ensure => present,

require => Exec["apt-get update"],

}

package {"npm":

ensure => present,

require => Exec["apt-get update"],

}
