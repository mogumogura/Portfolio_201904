require 'net/http'
require 'open-uri'
require 'json'
require 'active_support'
require 'active_support/core_ext'


class TourismsController < ApplicationController
  def index
    p params[:search]
    @hairetu = Tourism.search(params[:search])
    p @hairetu

  end
  def create
  end

  def show
  end
end
