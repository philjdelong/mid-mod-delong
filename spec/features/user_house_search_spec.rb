require 'rails_helper'

RSpec.describe "As a user" do
  describe "when i visit the homepage and select a house" do
    scenario "i see count of members and list of members" do
      visit "/"

      click_on "Search For Members"
      expect(current_path).to eq("/search")

      expect(page).to have_content("21 members")
      expect(page).to have_content("Harry")
      expect(page).to have_content("Ron")
      expect(page).to have_content("Hermione")
    end
  end
end

# As a user,
# When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see a total of the number of members for that house. (21 for Gryffindor)
# And I should see a list of the 21 members of the Order of the Phoenix for house Gryffindor.
