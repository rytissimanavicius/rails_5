# frozen_string_literal: true

# ApplicationController
class ApplicationController < ActionController::Base
  include Clearance::Controller
  before_action :test

  def test
    @author = 'Rytis Simanavičius'
  end
end
