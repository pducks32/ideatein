require "ideatein/version"

module Ideatein
  def self.authentication_cookies
    @@authentication_cookies ||= nil
  end

  def self.authentication_cookies=(new_value)
    @@authentication_cookies = new_value
  end

end
