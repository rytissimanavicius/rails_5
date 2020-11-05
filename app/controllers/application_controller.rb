class ApplicationController < ActionController::Base
    before_action :test

    def test
        @author = "Rytis Simanavičius"
    end
end
