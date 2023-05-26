module Mutations
  class CreateQuestion < BaseMutation
    # TODO: define return fields
    field :question, Types::QuestionType, null: false

    # TODO: define arguments
    argument :content, String, required: true
    argument :survey_id, Integer, required: true

    # TODO: define resolve method
    def resolve(survey_id:, content:)
      question = Question.new(survey_id: survey_id, content: content)
      if question.save
        {
          question: question
        }
      else
        {
          question: nil,
          errors: survey.errors.full_messages
        }
      end
    end

  end
end
