require 'test_helper'

class HostingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Hosting.new.valid?
  end
end
