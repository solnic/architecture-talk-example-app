require_relative 'app'
require 'roda'

class Web < Roda
  opts[:api] = App

  plugin :json

  route do |r|
    r.post 'users' do
      api['users.create_user'].call(r[:user])
    end
  end

  def api
    self.class.opts[:api]
  end
end
