class SuggestionsController < ApplicationController
    # Before setting the prices set pvm
    before_action :get_pvm

    $pvm = 0.00


    # Calculate and set the prices for
    # views/suggestions/suggestions.html.erb template
    def suggestions
        @popular_left_price = '%.2f' % (1200.00 - (1200.00 * $pvm))
        @popular_right_price = '%.2f' % (950.00 - (950.00 * $pvm))
    end

    # Return pvm
    def get_pvm
        $pvm = 0.27
    end
end