# frozen_string_literal: true

# TripsController
class TripsController < ApplicationController
  def index
    @title = 'Kelionių tvarkyklė'

    @trips = Trip.where('title LIKE ?', "%#{params[:search]}%")
  end

  def show
    @title = 'Apie kelionę'
    @trip = Trip.find(params[:id])
  end

  def new
    @title = 'Nauja kelionė'
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(params[:trip].permit(:title, :description, :price, :country, :region, :city))
    @trip.save
    redirect_to trips_path
  end

  def edit
    @title = 'Redaguoti kelionę'
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update_attributes(params[:trip].permit(:title, :description, :price, :country, :region, :city))
    redirect_to trips_path
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path
  end
end
