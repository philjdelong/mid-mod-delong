class SearchController < ApplicationController

  def index
    @conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
      faraday.params["key"] = ENV['POTTER_API_TOKEN']
      faraday.adapter Faraday.default_adapter
    end
    response = @conn.get("houses")
    houses = JSON.parse(response.body)
  end
end
