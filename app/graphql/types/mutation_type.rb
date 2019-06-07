module Types
  class MutationType < BaseObject
    field :create_listing, mutation: Mutations::CreateListing
  end
end
