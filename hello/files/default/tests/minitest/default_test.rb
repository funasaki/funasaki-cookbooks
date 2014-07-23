require 'minitest/spec'
describe_recipe 'hello::default' do
    it 'create hello.txt' do
        file('/home/ec2-user/hello.txt').must_exist
    end
end

