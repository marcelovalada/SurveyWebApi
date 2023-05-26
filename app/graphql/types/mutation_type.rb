module Types
  class MutationType < Types::BaseObject
    field :destroy_answer, mutation: Mutations::DestroyAnswer
    field :destroy_question, mutation: Mutations::DestroyQuestion
    field :destroy_survey, mutation: Mutations::DestroySurvey
    field :update_answer, mutation: Mutations::UpdateAnswer
    field :update_question, mutation: Mutations::UpdateQuestion
    field :update_survey, mutation: Mutations::UpdateSurvey
    field :create_answer, mutation: Mutations::CreateAnswer
    field :create_question, mutation: Mutations::CreateQuestion
    field :create_survey, mutation: Mutations::CreateSurvey

  end
end
