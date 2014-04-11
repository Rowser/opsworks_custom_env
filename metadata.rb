maintainer "Artsy"
description "Writes a config/application.yml file with custom ENV values to apps' deploy directories."
version "0.3"

recipe "opsworks_custom_env::configure", "Write custom configuration and notify rails application to restart upon changes."
recipe "opsworks_custom_env::restart_command", "Helper recipe that defines command to restart rails application."
recipe "opsworks_custom_env::write_config", "Write a config/application.yml file to app's deploy directory. Used by configure recipe, or can be used directly in custom situations."

recipe 'opsworks_delayed_job::setup', 'Set up delayed_job worker.'
recipe 'opsworks_delayed_job::configure', 'Configure delayed_job worker.'
recipe 'opsworks_delayed_job::deploy', 'Deploy delayed_job worker.'
recipe 'opsworks_delayed_job::undeploy', 'Undeploy delayed_job worker.'
recipe 'opsworks_delayed_job::stop', 'Stop delayed_job worker.'

depends 'deploy'