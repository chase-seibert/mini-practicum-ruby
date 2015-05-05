class User < ActiveRecord::Base
    attr_accessor :username, :password, :full_name

    def self.create(username, password)
        @username = username
        @password = password
        self.save()
        return self
    end

