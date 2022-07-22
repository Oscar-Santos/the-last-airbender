require 'rails_helper'

RSpec.describe SearchFacade do
  it 'returns the first 25 members of the nation' do
    members = SearchFacade.get_members('fire nation')

    members.each do |member|
      expect(member).to be_a(Member)
    end
  end

  it 'can count the number of members' do
    count_members = SearchFacade.count_members('fire nation')

    expect(count_members).to be_a(Integer)
    expect(count_members).to be > 0

  end
end
