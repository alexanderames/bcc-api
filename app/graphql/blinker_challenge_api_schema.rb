class BlinkerChallengeApiSchema < GraphQL::Schema
  use GraphQL::Subscriptions::ActionCableSubscriptions, redis: Redis.new
  subscription(Types::SubscriptionType)
  mutation(Types::MutationType)
  query(Types::QueryType)
end
