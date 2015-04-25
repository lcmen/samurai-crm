module Samurai::Contacts
  class Contact < ActiveRecord::Base
    belongs_to :user

    scope :ordered, -> { order('created_at desc') }
  end
end
