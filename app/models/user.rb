class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_tags
  has_many :tags, :through => :user_tags
  
  accepts_nested_attributes_for :user_tags, :allow_destroy => true

  def subscribed_events
  	Event.joins(:event_tags).where('event_tags.tag_id in (?)',tags.collect(&:id))
  end
end
