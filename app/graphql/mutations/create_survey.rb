module Mutations
  class CreateSurvey < BaseMutation
    # TODO: define return fields
    field :survey, Types::SurveyType, null: false

    # TODO: define arguments
    argument :title, String, required: true

    # TODO: define resolve method
    def resolve(title:)
      survey = Survey.new(title: title)
      if survey.save
        {
          survey: survey,
          errors: [],
        }
      else
        {
          survey: nil,
          errors: survey.errors.full_messages
        }
      end
    end
  end
end
