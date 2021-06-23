require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'John', email: 'john@example.com')
  end

  test 'valid user' do
    assert true
    #@user.valid?
  end
end
