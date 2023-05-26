module Mutations
  class DestroySurvey < BaseMutation
    # TODO: define return fields
    field :id, ID, null: true

    # TODO: define arguments
    argument :id, ID, required: true

    # TODO: define resolve method
    def resolve(id:)
      survey = Survey.find(id)
      if survey.destroy
        {
          id: id,
        }
      else
        {
          errors: survey.errors.full_messages
        }
      end
    end

  end
end
