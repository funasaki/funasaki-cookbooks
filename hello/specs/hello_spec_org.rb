require 'minitest/spec'

describe_recipe 'hello::default' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'installs config file' do
    case node[:platform]
    when 'debian','ubuntu'
      file('/home/ec2-user/aaa.txt').must_exist.with(:mode, '644').and(
        :owner, 'root').and(:group, 'root')
    when 'centos','redhat','fedora','amazon'
      file('/home/ec2-user/aaa.txt').must_exist.with(:mode, '644').and(
        :owner, 'root').and(:group, 'root')
    end
  end
end
