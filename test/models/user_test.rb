require "test_helper"
require 'YAML'

class UserTest < ActiveSupport::TestCase
  test 'creates Alice and Bob fixture users' do
    alice_and_bob = User.where(email: 'alice@lemonginger.com').or(User.where(email: 'bob@lemonginger.com'))
    assert_equal 2, alice_and_bob.size
  end
end
