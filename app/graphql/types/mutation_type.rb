module Types
  class MutationType < Types::BaseObject
    field :create_answer, mutation: Mutations::CreateAnswer
    field :create_question, mutation: Mutations::CreateQuestion
    field :create_survey, mutation: Mutations::CreateSurvey

  end
end
