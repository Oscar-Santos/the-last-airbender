class SearchService
  def self.get_all_members(nation)
    n = nation.titleize.gsub(' ', '+')

    end_point = "/api/v1/characters?affiliation=#{n}"
    response = connection.get(end_point) do |faraday|

      faraday.params['perPage'] = '100'
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    url = 'https://last-airbender-api.herokuapp.com'
    Faraday.new(url: url)
  end
end
