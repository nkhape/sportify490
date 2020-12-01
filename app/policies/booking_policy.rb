class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def accept?
    record.event.user == user
  end

  def cancel?
    true
  end
end
