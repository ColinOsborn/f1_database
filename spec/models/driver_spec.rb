require 'rails_helper'

RSpec.describe Driver, type: :model do
  context 'error_handling' do
    it 'is not valid without a name' do
      input = Driver.error_handling('')
      expect(input).to be('Error')
    end
  end
end
