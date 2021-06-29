require 'rails_helper'

RSpec.describe CurrentDriver, type: :model do
  context 'validations' do
    it 'is not valid without a name' do
      no_name = CurrentDriver.new(name: nil)
      expect(no_name).to_not be_valid
    end
    it 'is not valide without a team' do
      no_team = CurrentDriver.new(name: 'Seb Vettel', team: nil)
      expect(no_team).to_not be_valid
    end
  end
end
