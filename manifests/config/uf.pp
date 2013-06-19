#Private Class configure universal forwarders
class splunk::config::uf (
  $SPLUNKHOME = $::splunk::SPLUNKHOME,
  $status  = 'enabled'
  ) {
  ini_setting { 'Disable Web Server':
    path    => "${SPLUNKHOME}/etc/system/local/server.conf",
    section => 'httpServer',
    setting => 'disableDefaultPort',
    value   => 'True',
    ensure  => present,
  }
}