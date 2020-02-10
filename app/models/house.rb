class House
  attr_reader :name, :members

  def initialize(attributes = {})
    @name = attributes["name"]
    @members = attributes["members"]
  end

  def member_count
    @members.count
  end
end
