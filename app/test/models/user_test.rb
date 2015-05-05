require 'text_helper'

class UserTest < ActiveSupport::TestCase

    test "create user" do
        user = User.create("foo", "bar")
        assert user.save
    end

    test "full name" do
        user = User.create("foo", "bar")
        user.full_name = "bat baz"
        assert user.full_name == "bat"
    end

end
