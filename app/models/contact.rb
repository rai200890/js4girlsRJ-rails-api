class Contact < ActiveRecord::Base
  include Gravtastic
  gravtastic

  validates :name, presence: true
  validates :email, uniqueness: true

end
