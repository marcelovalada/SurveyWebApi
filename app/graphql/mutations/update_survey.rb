module Mutations
  class UpdateSurvey < BaseMutation
    # TODO: define return fields
    field :survey, Types::SurveyType, null: false

    # TODO: define arguments
    argument :id, ID, required: true
    argument :title, String, required: true

    # TODO: define resolve method
    def resolve(id:, title:)
      survey = Survey.find(id)

      if survey.update(title: title)
        {
          survey: survey,
        }
      else
        {
          errors: survey.errors.full_messages
        }
      end
    end

  end
end
