# frozen_string_literal: true

# SuggestionsController
class SuggestionsController < ApplicationController
  # Before setting the prices set pvm
  before_action :getpvm

  $pvm = 0.00

  # Calculate and set the prices for
  # views/suggestions/suggestions.html.erb template
  def suggestions
    @popular_left_price = format('%.2f', (1200.00 - (1200.00 * $pvm)))
    @popular_right_price = format('%.2f', (950.00 - (950.00 * $pvm)))
  end

  # Return pvm
  def getpvm
    $pvm = 0.27
  end
end
