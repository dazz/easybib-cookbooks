# download the source and extract it

php_dl="http://www.php.net/get/php-#{node["php-fpm"][:version]}.tar.gz/from/www.php.net/mirror"
php_dl="http://downloads.php.net/stas/php-5.4.0RC6.tar.gz"

remote_file "/tmp/php-#{node["php-fpm"][:version]}.tgz" do
  source "#{php_dl}"
  checksum node["php-fpm"][:checksum]
end

execute "PHP: unpack" do
  command "cd /tmp && tar -xzf php-#{node["php-fpm"][:version]}.tgz"
end
