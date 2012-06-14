# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :skype, :user_type, :referred_by
  after_create :send_welcome_email
  
  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates :skype, :presence => true

  private

  def send_welcome_email
     unless self.email.include?('@palmling.com') && Rails.env != 'test'
       UserMailer.welcome_email(self).deliver
     end
  end
end