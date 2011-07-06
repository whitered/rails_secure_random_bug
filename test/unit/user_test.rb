require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'plain name' do
    name = 'tom'
    u = User.create(:name => name)
    assert_equal u, User.find_by_name(name)
  end

  # why does this test fail?!
  test 'SecureRandom name' do
    name = SecureRandom.hex(1)
    u = User.create(:name => name)
    assert_equal u, User.find_by_name(name)
  end

end
