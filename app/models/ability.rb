# Ability class for authorization
class Ability
  include CanCan::Ability

  # This method for role wise authentication of user
  # each role is identified and according to role privileges are
  # set to each role , if role is employee then check for his privileges and hen
  # set set it to perticular employee
  def initialize(user)
    if user.role == 'SuperAdmin'
      can :manage, :all
    elsif user.role == 'ChartedAccountant'
      can [:read, :create, :update], :all
    elsif user.role == 'Party'
      can [:read, :create, :update], :all
    end
end