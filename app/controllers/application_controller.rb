class ApplicationController < ActionController::Base
  include Clearance::Controller
    before_action :test
    
    def test
        @author = "Rytis Simanavičius"
    end
end
