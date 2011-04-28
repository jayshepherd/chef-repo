# Apache vhost configuration settings
default[:tandem][:document_root]  = "/var/www/tandem/public"
default[:tandem][:vhost_template] = "tandem.conf.erb"
default[:tandem][:environment]    = "production" 
default[:tandem][:server_name]    = "tandem"
default[:tandem][:server_aliases]  = [node[:hostname], "tandem"]

# Deploy configuration settings
default[:tandem][:user]             = "chef"
default[:tandem][:group]            = "chef"
default[:tandem][:branch]           = "production"
default[:tandem][:repo]             = "git@github.com:icsdev/tandem.git"
default[:tandem][:migrate]          = "true" # True or False, if migrations should be run on deploy
