module Mutations
  class UpdateAnswer < BaseMutation
    # TODO: define return fields
    field :answer, Types::AnswerType, null: false

    # TODO: define arguments
    argument :id, ID, required: true
    argument :content, String, required: true
    argument :question_id, Integer, required: true

    # TODO: define resolve method
    def resolve(id:, question_id:, content:)
      answer = Answer.find(id)
      if answer.update(question_id: question_id, content: content)
        {
          answer: answer
        }
      else
        {
          errors: survey.errors.full_messages
        }
      end
    end

  end
end
