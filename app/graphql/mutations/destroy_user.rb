module Mutations
  class DestroyUser < BaseMutation
    # TODO: define return fields
    field :id, ID, null: true

    # TODO: define arguments
    argument :id, ID, required: true

    # TODO: define resolve method
    def resolve(id:)
      user = User.find(id)
      if user.destroy
        {
          id: id,
        }
      else
        {
          errors: user.errors.full_messages
        }
      end
    end

  end
end
