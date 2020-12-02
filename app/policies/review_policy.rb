class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    event = record.event
    user == event.user || event.users.include?(user)
  end

  def new?
    true
  end
end
