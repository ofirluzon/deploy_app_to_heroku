class HomeController < ApplicationController
  def index
    @tests = Test.all
  end

  def action_cable_test
    ActionCable.server.broadcast('test_channel', {})
  end
end
