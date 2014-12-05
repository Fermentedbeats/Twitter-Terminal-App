class Todo < ActiveRecord::Base
  belongs_to :list
  has_many :tags
end
