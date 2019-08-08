class ReviewPolicy < ApplicationPolicy
  def create?
     record.user == user
     @booking =
  end


  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
