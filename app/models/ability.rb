class Ability
  include CanCan::Ability
  

def initialize(user)
  if user.nil?
    can :read, Article
  elsif user.has_role? :admin
    can :manage, Article
  else
    can [:read, :create], Article
    can [:update, :destroy], Article, :user_id => user.id
    can :manage, Article, :user_id => user.id
    
  end
end
end
