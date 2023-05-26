module Mutations
  class CreateUser < BaseMutation
    # TODO: define return fields
    field :user, Types::UserType, null: false

    # TODO: define arguments
    argument :email, String, required: true
    argument :password, String, required: true
    argument :admin, Boolean, required: true

    # TODO: define resolve method
    def resolve(email:, password:, admin:)
      user = User.new(email: email, password: password, admin: admin)
      if user.save
        {
          user: user
        }
      else
        {
          errors: user.errors.full_messages
        }
      end
    end
  end
end
