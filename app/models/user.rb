class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :notes, dependent: :destroy

  def soft_user?
    self.email.empty?
  end

  def needs_engagement?
    notes = Note.where(soft_token: self.soft_token)
    if self.soft_user? && notes.count >= 2
      true
    end
  end

end
