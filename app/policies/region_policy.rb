class RegionPolicy < ApplicationPolicy
  def update?
    record.has_leader?(user)
  end

  def modify_leadership?
    record.has_leader?(user)
  end
end