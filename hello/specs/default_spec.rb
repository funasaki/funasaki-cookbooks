require 'minitest/spec'

describe_recipe 'hello::default' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'create hello6.txt' do
    file('/home/ec2-user/hello6.txt').must_exist
  end

  it 'must be the right version' do
    assert_match node['ruby']['version'], `/usr/local/bin/ruby -v`.chomp
  end
end
