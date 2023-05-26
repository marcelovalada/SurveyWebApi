module Mutations
  class DestroyQuestion < BaseMutation
    # TODO: define return fields
    field :id, ID, null: true

    # TODO: define arguments
    argument :id, ID, required: true

    # TODO: define resolve method
    def resolve(id:)
      question = Question.find(id)
      if question.destroy
        {
          id: id,
        }
      else
        {
          errors: question.errors.full_messages
        }
      end
    end

  end
end
