class SearchFacade
  def self.get_members(nation)
    json = SearchService.get_all_members(nation)

    json.map do |member|
      Member.new(member)
    end
  end
end
