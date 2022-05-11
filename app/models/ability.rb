class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Quiz, published: true

    return unless user.guest?

    can %i[read update], Quiz, user: user

    return unless user.admin?

    can :manage, :all
  end
end
