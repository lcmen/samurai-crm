module Samurai
  class Ability
    include CanCan::Ability

    class_attribute :abilities
    self.abilities = Set.new

    # Allows us to go beyond the standard cancan initialize method which makes
    # it difficult for engines to modify the default {Ability} of an
    # application. The registered ability should behave properly as a
    # stand-alone class
    # and therefore should be easy to test in isolation.
    # @param ability [Ability] a class that includes the CanCan::Ability module.
    def self.register_ability(ability)
      self.abilities.add(ability)
    end

    # Remove a registered ability.
    # @param ability [Ability] a class that includes the CanCan::Ability module.
    def self.remove_ability(ability)
     self.abilities.delete(ability)
    end

    def initialize(user)
      Rails.logger.info self.abilities.inspect

      if user.admin?
        can :manage, :all
      else
        can :read, :dashboard
      end

      # Include any abilities registered by extensions, etc.
      Ability.abilities.each do |klass|
        ability = klass.send(:new, user)
        @rules = rules + ability.send(:rules)
      end

      # Define abilities for the passed in user here. For example:
      #
      #   user ||= User.new # guest user (not logged in)
      #   if user.admin?
      #     can :manage, :all
      #   else
      #     can :read, :all
      #   end
      #
      # The first argument to `can` is the action you are giving the user
      # permission to do.
      # If you pass :manage it will apply to every action. Other common actions
      # here are :read, :create, :update and :destroy.
      #
      # The second argument is the resource the user can perform the action on.
      # If you pass :all it will apply to every resource. Otherwise pass a Ruby
      # class of the resource.
      #
      # The third argument is an optional hash of conditions to further filter the
      # objects.
      # For example, here the user can only update published articles.
      #
      #   can :update, Article, :published => true
      #
      # See the wiki for details:
      # https://github.com/ryanb/cancan/wiki/Defining-Abilities
    end
  end
end
