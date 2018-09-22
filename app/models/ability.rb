class Ability
  include CanCan::Ability


  def initialize(user)
    if user && user.admin?
      can :access, :rails_admin
      can :manage, :all
    else
      cannot [:create, :update, :delete], Category
    end
  end
end
