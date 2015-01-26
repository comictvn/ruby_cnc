class Token < ActiveRecord::Base
  	belongs_to :user

   	validates_presence_of :uid, :email, :expiration_date
	  validates_uniqueness_of :token

	  before_create :generate_token

	  def expired?
	    self.expiration_date.nil? || self.expiration_date.past?
	  end

	  def not_expired?
	    !expired?
	  end

	  private
	    def generate_token
	      begin
	        self.token = SecureRandom.hex
	      end while self.class.exists?(token: token)
	    end
end
