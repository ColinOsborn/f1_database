class Driver < ApplicationRecord

  def self.service
    @@service ||= F1SearchService.new
  end

  def self.error_handling(input)
    input[:player].nil? ? 'Error' : input
  end

  def self.output_parse(name)
    name[:player].first
  end

  def self.banner_parse(string)
    image = output_parse(string)
    image[:strBanner]
  end

  def self.driver_name(string)
    name = output_parse(string)
    name[:strPlayer]
  end

  def self.nationality(string)
    nation = output_parse(string)
    nation[:strNationality]
  end

  def self.team(string)
    team = output_parse(string)
    team[:strTeam]
  end

  def self.thumb_img(string)
    image = output_parse(string)
    image[:strThumb]
  end

  def self.birth_location(string)
    location = output_parse(string)
    location[:strBirthLocation]
  end

  def self.description_en(string)
    description = output_parse(string)
    description[:strDescriptionEN]
  end
end
