require 'users/create_user'

RSpec.describe Users::CreateUser do
  subject(:create_user) do
    Users::CreateUser.new
  end

  describe '#call' do
    it 'returns created user' do
      user = create_user.call(id: 1, name: 'Jane')

      expect(user).to eql(id: 1, name: 'Jane')
    end
  end
end
