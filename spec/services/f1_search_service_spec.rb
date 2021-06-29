require 'rails_helper'

describe F1SearchService do
  context '#get_driver_search' do
    it 'returns driver api data' do
      driver = FormulaOneSearchService.new.get_driver_search('Kimi Raikkonen')
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
end
