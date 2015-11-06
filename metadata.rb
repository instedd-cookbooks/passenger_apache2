name              'passenger_apache2'
maintainer        'Chef Software, Inc.'
maintainer_email  'cookbooks@chef.io'
license           'Apache 2.0'
description       'Installs passenger for Apache2'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '2.3.0'

recipe 'passenger_apache2::default', 'Installs Passenger as an Apache module'
recipe 'passenger_apache2::mod_rails', 'Enables Apache module configuration for passenger module'

depends 'apache2', '~> 3.0'
depends 'build-essential'

%w( fedora redhat centos scientific amazon oracle ubuntu debian arch suse ).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/passenger_apache2' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/passenger_apache2/issues' if respond_to?(:issues_url)
