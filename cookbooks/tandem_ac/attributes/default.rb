default[:tandem_ac][:document_root]  = "/var/www/potsdam_ac/public"
default[:tandem_ac][:vhost_template] = "tandem_ac.conf.erb"
default[:tandem_ac][:environment]    = "production" 
default[:tandem_ac][:server_name]    = "tandem_ac"
default[:tandem_ac][:server_aliases]  = [node[:hostname], "tandem_ac"]
