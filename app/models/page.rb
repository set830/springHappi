class Page < ActiveRecord::Base

  has_many :calendars , :class_name => "Calendar", :foreign_key = "page_id"
  has_many :blogs , :class_name => "Blog", :foreign_key = "page_id"
  has_many :comments , :class_name => "Comment", :foreign_key => "page_id"

  belongs_to :user , :class_name => "User", :foreign_key => "user_id"


end
