class UserTag < ActiveRecord::Base
	belongs_to :user
	belongs_to :tag
	has_many :tags, :through => :event_tags
end
