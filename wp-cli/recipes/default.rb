wpdir = "/usr/bin/"

remote_file "#{wpdir}/wp" do
  source "https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
  owner "root"
  group "root"
  mode 00755
  checksum "80e2e3a229392db6784f3be5b440e3e36a97ab57a94bdcdf7d9713003ca7b6a0"
end

