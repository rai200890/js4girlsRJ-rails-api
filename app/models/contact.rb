class Contact < ActiveRecord::Base
  has_and_belongs_to_many :tags

  include Gravtastic
  gravtastic

  validates :name, presence: true
  validates :email, uniqueness: true

  def tag_names
    tags.pluck(:name)
  end

end
