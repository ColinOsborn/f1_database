class F1SearchService

  def initialize
    @connection = Faraday.new("https://www.thesportsdb.com/api/v1/json/1/")
  end

  def get_driver_search(name)
    input = name_parse(name)
    formatted = CGI.escape(input)
    response = @connection.get("searchplayers.php?&p=#{formatted}")
    saved = parse(response)
    store_search_data(saved)
    parse(response)
  end

  def get_team_search(team)
    formatted = CGI.escape(team)
    response = @connection.get("searchteams.php?t=#{formatted}")
    parse(response)
  end

  def store_search_data(data)
    search = Driver.output_parse(data)
    Search.create!(
      name: search[:strPlayer],
      nationality: search[:strNationality],
      team: search[:strTeam],
      dob: search[:dateBorn],
      sport: search[:strSport],
      birth_place: search[:strBirthLocation],
      description: search[:strDescriptionEN]
    )
  end

  private

  def parse(response)
    JSON.parse(response.body, object_class: OpenStruct)
  end

  def name_parse(name)
    name.is_a?(Array) ? name.pop : name
  end
end
