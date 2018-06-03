module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
 		super || guest_user
 	end

 	def guest_user
 		guest = GuestUser.new
 		guest.name = "Guest User"
 		guest.first_name = "Guest"
 		guest.last_name = "User"
 		guest.email = "Guest@GesutUser.com"
 		guest #return guest because Ruby is wierd like that. 
 	 end

end
