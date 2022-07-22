require 'rails_helper'

RSpec.describe Member do
  it 'exists' do
    data = {:_id=>"5cf5679a915ecad153ab6906",
            :allies=>["Ty Lee"],
            :enemies=>["Appa"],
            :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
            :name=>"Circus master",
            :affiliation=>"Fire Nation circus"}

    member = Member.new(data)

    expect(member).to be_a(Member)
  end

  it 'has attributes' do
    data = {:_id=>"5cf5679a915ecad153ab6906",
            :allies=>["Ty Lee"],
            :enemies=>["Appa"],
            :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
            :name=>"Circus master",
            :affiliation=>"Fire Nation circus"}

    member = Member.new(data)

    expect(member.name).to eq("Circus master")
    expect(member.allies).to eq(["Ty Lee"])
    expect(member.enemies).to eq(["Appa"])
    expect(member.affiliation).to eq("Fire Nation circus")
    expect(member.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
    
  end
end
