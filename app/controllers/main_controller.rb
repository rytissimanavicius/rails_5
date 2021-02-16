# frozen_string_literal: true

# MainController
class MainController < ApplicationController
  def finder
    @title = 'Kelionių paieška'
  end

  def contacts
    @title = 'Kontaktai'
  end

  def about
    @title = 'DUK'
  end
end
