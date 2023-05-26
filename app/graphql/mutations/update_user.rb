module Mutations
  class UpdateUser < BaseMutation
    # TODO: define return fields
    field :user, Types::UserType, null: false

    # TODO: define arguments
    argument :id, ID, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :admin, Boolean, required: true

    # TODO: define resolve method
    def resolve(id:, email:, password:, admin:)
      user = User.find(id)

      if user.update(email: email, password: password, admin: admin)
        {
          user: user,
        }
      else
        {
          errors: user.errors.full_messages
        }
      end
    end

  end
end
