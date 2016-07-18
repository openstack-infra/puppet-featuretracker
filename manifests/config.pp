# == Class: userstory_dashboard::config
#
# This class is used to manage arbitrary userstory_dashboard configurations.
#
# === Parameters
#
# [*userstory_dashboard_config*]
#   (optional) Allow configuration of arbitrary userstory_dashboard configurations.
#   The value is an hash of userstory_dashboard_config resources. Example:
#   { 'DEFAULT/foo' => { value => 'fooValue'},
#     'DEFAULT/bar' => { value => 'barValue'}
#   }
#   In yaml format, Example:
#   userstory_dashboard_config:
#     DEFAULT/foo:
#       value: fooValue
#     DEFAULT/bar:
#       value: barValue
#
#   NOTE: The configuration MUST NOT be already handled by this module
#   or Puppet catalog compilation will fail with duplicate resources.
#
class userstory_dashboard::config (
  $userstory_dashboard_config = {},
) {

  validate_hash($userstory_dashboard_config)

  create_resources('userstory_dashboard_config', $userstory_dashboard_config)
}
