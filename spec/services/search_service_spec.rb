require 'rails_helper'

RSpec.describe SearchService do
  it 'returns a list of members' do
    members = SearchService.get_all_members('fire nation')

    expect(members).to be_a(Array)

    expect(members.first).to have_key(:name)
    expect(members.first[:name]).to be_a(String)

    expect(members.first).to have_key(:allies)
    expect(members.first[:allies]).to be_a(Array)

    expect(members.first).to have_key(:enemies)
    expect(members.first[:enemies]).to be_a(Array)

    expect(members.first).to have_key(:affiliation)
    expect(members.first[:affiliation]).to be_a(String)

    expect(members.last).to have_key(:photoUrl)
    expect(members.last[:photoUrl]).to be_a(String)
  end
end
