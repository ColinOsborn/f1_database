class F1SearchService

  def initialize
    @connection = Faraday.new("https://www.thesportsdb.com/api/v1/json/1/")
  end

  def get_driver_search(name)
    formatted = URI.encode(name)
    response = @connection.get("searchplayers.php?&p=#{formatted}")
    parse(response)
  end

  def get_team_search(team)
    formatted = URI.encode(team)
    response = @connection.get("searchteams.php?t=#{formatted}")
    parse(response)
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end
end
