class NginxSpec < MiniTest::Chef::Spec
  describe 'configuration' do
    it 'creates nginx.conf' do
      file("/etc/fstab").must_have(:mode, "644")
      assert File.exist?('/etc/nginx.conf')
  end
end
