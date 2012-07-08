actions :install, :setup

# deploy to is the target_directory
attribute :deploy_to, :kind_of => String, :name_attribute => true

# update the composer.phar? some people like to live on the edge!
attribute :self_update, :kind_of => [ TrueClass, FalseClass], :default => FalseClass
