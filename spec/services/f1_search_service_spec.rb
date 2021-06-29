require 'rails_helper'

describe F1SearchService do
  context '#get_driver_search' do
    it 'returns driver api data' do
      driver = F1SearchService.new.get_driver_search('Kimi Raikkonen')
      kimi = driver['player'].first
      expect(kimi['strNationality']).to eq('Finland')
      expect(kimi['strPlayer']).to eq('Kimi Raikkonen')
      expect(kimi['strTeam']).to eq('Alfa Romeo Racing')
      expect(kimi['strSport']).to eq('Motorsport')
      expect(kimi['dateBorn']).to eq('1979-10-17')
      expect(kimi['strBirthLocation']).to eq('Espoo (Finland)')
      expect(kimi['strDescriptionEN']).to include("Kimi-Matias Räikkönen born 17 October 1979), nicknamed \"Iceman\", is a Finnish racing driver currently driving in Formula One for Sauber.")
    end
  end

  context '#get_team_search' do
    it 'returns team api data' do
      team = F1SearchService.new.get_team_search('Mclaren')
      mclaren = team['teams'].first
      expect(mclaren['strTeam']).to eq('McLaren')
      expect(mclaren['intFormedYear']).to eq('1966')
      expect(mclaren['strLeague']).to eq('Formula 1')
      expect(mclaren['strStadium']).to eq("McLaren Technology Centre Woking")
      expect(mclaren['strStadiumDescription']).to include('The McLaren Technology Centre is the headquarters of the McLaren Group and all of its companies, located on a 500,000 m² site in Woking, Surrey, England.')
    end
  end
end
