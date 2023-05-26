module Mutations
  class DestroyAnswer < BaseMutation
    # TODO: define return fields
    field :id, ID, null: true

    # TODO: define arguments
    argument :id, ID, required: true

    # TODO: define resolve method
    def resolve(id:)
      answer = Answer.find(id)
      if answer.destroy
        {
          id: id,
        }
      else
        {
          errors: answer.errors.full_messages
        }
      end
    end

  end
end
