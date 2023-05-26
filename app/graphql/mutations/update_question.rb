module Mutations
  class UpdateQuestion < BaseMutation
    # TODO: define return fields
    field :question, Types::QuestionType, null: false

    # TODO: define arguments
    argument :id, ID, required: true
    argument :content, String, required: true
    argument :survey_id, Integer, required: true

    # TODO: define resolve method
    def resolve(id:, survey_id:, content:)

      question = Question.find(id)
      if question.update(survey_id: survey_id, content: content)
        {
          question: question
        }
      else
        {
          errors: survey.errors.full_messages
        }
      end
    end

  end
end
