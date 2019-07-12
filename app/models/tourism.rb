require 'net/http'
require 'open-uri'
require 'json'
require "addressable/uri"

class Tourism < ApplicationRecord

  def self.search(search)
    word = search
    @data={
      "keyid": "8c21c9dbcd8841703fc79465ef68b9c1",
      "freeword": word,
      "hit_per_page": 30,
    }

    query = @data.to_query

    json = Net::HTTP.get(URI.parse('https://api.gnavi.co.jp/RestSearchAPI/v3/?'+query))
    return JSON.parse(json) #配列形式に変換
  end
end
