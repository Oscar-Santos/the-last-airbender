require 'rails_helper'

RSpec.describe 'NationIndex' do
  it 'finds nation tribes' do
    member = SearchFacade.get_members('fire nation').first
    count_members = SearchFacade.count_members('fire nation')

    visit root_path

    select 'Fire Nation'
    click_on 'Search For Members'

    expect(current_path).to eq("/search")

    expect(page).to have_content(count_members)

    expect(page).to have_content(member.name)
    expect(page).to have_content(member.allies)
    expect(page).to have_content(member.enemies)
    expect(page).to have_content(member.affiliation)

    expect(page).to_not have_content('Afilliation: Earth Kingdom')
  end
end
