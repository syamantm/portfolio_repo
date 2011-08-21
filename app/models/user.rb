# == Schema Information
# Schema version: 20110503232835
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  subject    :string(255)
#  content    :text
#

class User < ActiveRecord::Base
  
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true                   
  
  validates :email, :presence => true,
                    :format   => { :with => email_regex }
  
  validate :subject, :presence => true
  
  validate :content, :presence => true,
          :length => { :maximum => 4000 }
  
end
