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
  #after_create :send_welcome_email
  
  validates :name, :presence => true
  validates_presence_of :email  
  validates_uniqueness_of :email, :message =>"address is already on file. <br/><a class='btn btn-success btn-large' href='http://skype.verbalizeit.com/upgrade'>Upgrade to premium</a>"
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates :skype, :presence => true

  private

  def send_welcome_email
     unless self.email.include?('@verbalizeit.com') && Rails.env != 'test'
       UserMailer.welcome_email(self).deliver
     end
  end
end