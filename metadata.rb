name             "sensu"
maintainer       "Sonian, Inc."
maintainer_email "chefs@sonian.net"
license          "Apache 2.0"
description      "Installs/Configures Sensu"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.5.4"

# available @ http://community.opscode.com/cookbooks/apt
depends "apt"

# available @ http://community.opscode.com/cookbooks/yum
depends "yum"

# available @ http://community.opscode.com/cookbooks/windows
#depends "windows", ">= 1.8.8"

# available @ http://community.opscode.com/cookbooks/rabbitmq
depends "rabbitmq", ">= 2.0.0"

# available @ https://github.com/miah/chef-redis
depends "redis"

%w[
  ubuntu
  debian
  centos
  redhat
  fedora
  windows
].each do |os|
  supports os
end
