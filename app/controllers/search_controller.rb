class SearchController < ApplicationController

  def index
    return @conn if @conn
    conn = Faraday.new("https://www.potterapi.com/v1/houses") do |faraday|
      faraday.headers["key"] = ENV['POTTER_API_TOKEN']
      faraday.adapter Faraday.default_adapter
  end
end
