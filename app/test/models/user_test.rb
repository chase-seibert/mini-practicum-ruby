require 'text_helper'

class UserTest < ActiveSupport::TestCase

    test "create user" do
        user = User.create("foo", "bar")
        assert user.save
    end

end
