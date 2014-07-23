describe 'hello' do
  it 'creates file' do
     assert File.exists?('/home/ec2-user/hello4.txt')
  end
end
