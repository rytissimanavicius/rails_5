class MainController < ApplicationController
    # Set title in views/main/finder.html.erb template as
    def finder
        @title = "Kelionių paieška"
    end

    # Set title in views/main/contacts.html.erb template as
    def contacts
        @title = "Kontaktai"
    end

    # Set title in views/main/about.html.erb template as
    def about
        @title = "DUK"
    end
end