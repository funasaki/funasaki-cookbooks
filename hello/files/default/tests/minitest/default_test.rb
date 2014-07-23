require 'minitest/spec'

class TestApache2 < MiniTest::Chef::TestCase
  def test_that_the_service_is_enabled
    assert File.exists?("/home/ec2-user/hello4.txt")
  end
end
