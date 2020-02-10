class SearchController < ApplicationController

  def index
    #potter_services
    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
      faraday.params["key"] = ENV['POTTER_API_TOKEN']
      faraday.adapter Faraday.default_adapter
    end
    response = conn.get("houses")
    to_json = JSON.parse(response.body)

    houses = to_json.map do |house_info|
      House.new(house_info)
    end
    @house_name = houses.first.name
    @house_members = houses.first.members
    @member_count = houses.first.member_count
  end
end
