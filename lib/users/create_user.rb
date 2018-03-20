require 'import'

module Users
  class CreateUser
    include Import['repos.user_repo']

    def call(params)
      user_repo.create(params)
    end
  end
end
