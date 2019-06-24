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

  #   if hash.has_key?("response")
  #     hash["response"]["rest"].each do |shop|
  #       shop.push({
  #         name: shop["name"],
  #         url: shop["url"],
  #         opentime: shop["opentime"],
  #         holiday: shop["holiday"],
  #         image1: shop["image_url"]["shop_image1"]
  #       })
  #   end

  #   elsif hash.has_key?("gnavi")
  #     if hash["gnavi"].has_key?("error")
  #       if hash["gnavi"]["error"]["code"] == "600"
  #         @error = "店舗の情報が存在しません"
  #     end
  #   end

  #   else
  #     @error = "エラーが発生しました"
  #   end

  #   rescue
  #     @error = "エラーが発生しました"
    # end
  end
  def create
    # keyword = params[:search]
    # redirect_to "/index?keyword=#{keyword}"
  end

  def show
  end
end
