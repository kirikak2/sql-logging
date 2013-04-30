class Book < ActiveRecord::Base
  acts_as_paranoid
  attr_accessible :author, :price, :title
  has_many :book_details
end
