require 'net/http'
require 'open-uri'
require 'json'
require "addressable/uri"

class Tourism < ApplicationRecord

  def self.search(search)
    word = search
    @data={
      "keyid": "496e40bdc04b4f2a3187a01c2afabd6d",
      "freeword": word,
      "hit_per_page": 40,
    }

    query = @data.to_query

    json = Net::HTTP.get(URI.parse('https://api.gnavi.co.jp/RestSearchAPI/v3/?'+query))
    return JSON.parse(json) #配列形式に変換


    #uri = Addressable::URI.parse('https://api.gnavi.co.jp/RestSearchAPI/v3/?keyid=496e40bdc04b4f2a3187a01c2afabd6d&address=&freeword=&hit_per_page=10')
    # @hairetu = JSON.parse(json) #配列形式に変換
    # binding.pry
    # if search
    #   where("freeword LIKE ?","%#{search}%")
    # else
    #   all
    # end
  end
end
