require 'helper'

class TestConfig < Minitest::Test
  def test_get_chankurarc
    path = File.expand_path '../../fixtures/chankurarc', __FILE__
    access_key, secret_key = ChankuraAPI::Config.get_chankurarc(path)
    assert_equal 'access1234567', access_key
    assert_equal 'secret1234567', secret_key
  end
end
