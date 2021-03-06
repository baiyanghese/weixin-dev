class Notification < ActiveRecord::Base
  include IdentityCache

  belongs_to :user
  belongs_to :subject, polymorphic: true

  scope :named, -> (name) { where(name: name) }
  scope :unread, -> { where(read: false) }
end
