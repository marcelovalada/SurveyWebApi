module Mutations
  class CreateAnswer < BaseMutation
    # TODO: define return fields
    field :answer, Types::AnswerType, null: false

    # TODO: define arguments
    argument :content, String, required: true
    argument :question_id, Integer, required: true

    # TODO: define resolve method
    def resolve(question_id:, content:)
      answer = Answer.new(question_id: question_id, content: content)
      if answer.save
        {
          answer: answer
        }
      else
        {
          answer: nil,
          errors: survey.errors.full_messages
        }
      end
    end

  end
end
