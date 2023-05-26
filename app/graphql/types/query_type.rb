module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :surveys, [SurveyType], null: true
    def surveys
      Survey.all
    end

    field :questions, [QuestionType], null: true
    def questions
      Question.all
    end

    field :answers, [AnswerType], null: true
    def answers
      Answer.all
    end

    field :users, [UserType], null: true
    def users
      User.all
    end

  end
end
