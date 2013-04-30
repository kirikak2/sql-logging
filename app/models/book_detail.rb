class BookDetail < ActiveRecord::Base
  acts_as_paranoid
  attr_accessible :book, :detail

  default_scope{ where(paranoid_default_scope_sql).with_logging }
end
