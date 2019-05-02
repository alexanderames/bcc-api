module Types
  class SubscriptionType < Types::BaseObject
    field :newMake, Types::MakeType, null: false, description: 'A new vehicle make'

    def new_make
    end
  end
end
