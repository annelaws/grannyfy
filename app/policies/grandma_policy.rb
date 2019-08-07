class GrandmaPolicy < ApplicationPolicy

  def show?
    return true
  end

  def new?
    create?
  end

  def create?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.geocoded
    end
  end
end
