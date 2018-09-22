class Ability
  include CanCan::Ability


  def initialize(user)
  byebug
    if user && user.admin?
    byebug
      can :access, :rails_admin
      can :manage, :all
    else
      cannot [:create, :update, :delete], Category
    end
  end
end
