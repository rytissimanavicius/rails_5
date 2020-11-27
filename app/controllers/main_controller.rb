class MainController < ApplicationController
    def finder
        @title = "Kelionių paieška"
    end

    def contacts
        @title = "Kontaktai"
    end

    def about
        @title = "DUK"
    end
    
=begin
    def admin
        @title = "Kelionių tvarkyklė"
        @trips = Trip.all        
    end

    def edit
        @title = "Redaguoti kelionę"

        @id = params[:id]
        @trip_title = Trip.where(id: params[:id]).pluck(:title)
        @description = Trip.where(id: params[:id]).pluck(:description)
        @price = Trip.where(id: params[:id]).pluck(:price)
        @country = Trip.where(id: params[:id]).pluck(:country)
        @region = Trip.where(id: params[:id]).pluck(:region)
        @city = Trip.where(id: params[:id]).pluck(:city)
    end

    def destroy
        @trip = Trip.find(params[:id]).destroy
        redirect_to :admin
    end

    def new
        @title = "Pridėti kelionę"
        @trip = Trip.new
    end

    def create 
        @trip = Trip.new(params[:trip])
        @trip.save
        redirect_to :admin
    end
=end
end