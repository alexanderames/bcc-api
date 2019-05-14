class Make < ApplicationRecord
  after_save :notify_subscriber_of_addition

  validates :name, presence: true, uniqueness: true
  has_many :models, dependent: :destroy
  has_many :vehicles

  private

  def notify_subscriber_of_addition
    BlinkerChallengeApiSchema.subscriptions.trigger('newMake', {}, self)
  end
end
