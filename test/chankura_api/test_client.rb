require 'helper'

class TestClient < Minitest::Test
  def test_instantiation_without_keys
    client = ChankuraAPI::Client.new
    assert_equal client.class, ChankuraAPI::Client
  end

  def test_access_private_apis_without_keys
    assert_raises ArgumentError do
      ChankuraAPI::Client.new.post ''
    end
  end

  def test_initialize_with_options
    c = ChankuraAPI::Client.new(access_key: 'access', secret_key: 'secret')
    assert_equal 'access', c.instance_variable_get('@access_key')
    assert_equal 'secret', c.instance_variable_get('@secret_key')
  end
end
