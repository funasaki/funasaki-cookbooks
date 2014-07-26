require 'minitest/spec'

describe_recipe 'hello::default' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'create hello.txt' do
    file('/home/ec2-user/hello.txt').must_exist
  end
end
