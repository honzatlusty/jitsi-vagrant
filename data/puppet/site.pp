$jicofo_configuration = {
  jicofo_domain        => '192.168.33.11',
  jicofo_secret        => '1O9N0BsLiH2GfQUR',
  jicofo_user_domain   => 'auth.192.168.33.11',
  jicofo_user_name     => 'focus',
  jicofo_user_password => 'rZ9DdNlVWNwmP7u1'
}

$jitsi_videobridge_configuration = {
  jitsi_videobridge_host    => '192.168.33.11',
  jitsi_videobridge_domain  => '192.168.33.11',
  jitsi_videobridge_port    => 5347,
  jitsi_videobridge_secret  => 'g0095jJLeXiDBAL8',

}

class {profile_jitsi:
  bosh => '//192.168.33.11/http-bind',
  jicofo_configuration => $jicofo_configuration,
  jicofo_password => '1O9N0BsLiH2GfQUR',
  jitsi_videobridge_configuration => $jitsi_videobridge_configuration,
  jitsi_vhost_server_name => '192.168.33.11',
  user_name => 'focus',
  user_password => 'rZ9DdNlVWNwmP7u1',
  videobridge_password => 'g0095jJLeXiDBAL8',
  ssl_key => undef,
  ssl_cert => undef,
  country => 'BE',
  company => 'whatever',
  jitsi_domain => '192.168.33.11',
  prosody_interface => '192.168.33.11',
#  hypervisor_public_interface,

}

