class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  has_many :products, through: :reviews

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  before_save :capitalize_title

  private
  def capitalize_title
    self.name = name.titleize
  end
end
