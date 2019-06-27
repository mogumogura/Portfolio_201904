require 'net/http'
require 'open-uri'
require 'json'
require 'active_support'
require 'active_support/core_ext'


class TourismsController < ApplicationController
  def index
    #   keyword = params[:keyword]

    # uri = "https://api.gnavi.co.jp/RestSearchAPI/v3/"
    # access_key = ENV['496e40bdc04b4f2a3187a01c2afabd6d']
    # url = uri << "?keyid=" << access_key << "&hit_per_page=20" << "&freeword=" << keyword
    # url = URI.encode url
    # json = open(url)
    # hairetu = JSON.parse(json)
    # shop = hairetu["rest"]

    @hairetu = Tourism.search(params[:search])

  end
  def create
    # keyword = params[:search]
    # redirect_to "/index?keyword=#{keyword}"
  end

  def show
  end
end
