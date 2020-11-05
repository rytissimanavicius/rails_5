class SuggestionsController < ApplicationController
    before_action :get_pvm

    $pvm = 0.00

    def suggestions
        @popular_left_price = '%.2f' % (1200.00 - (1200.00 * $pvm))
        @popular_right_price = '%.2f' % (950.00 - (950.00 * $pvm))
    end

    def get_pvm
        $pvm = 0.27
    end
end