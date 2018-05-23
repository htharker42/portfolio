class Porto < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_porto, -> { where(subtitle: 'Ruby on Rails') }

	after_initialize :set_defaults

	def set_defaults 
		self.main_image ||= "http://i0.kym-cdn.com/entries/icons/facebook/000/006/786/zoidberg.jpg"
		self.thumb_image ||= "https://pre00.deviantart.net/b53e/th/pre/f/2012/119/b/7/zoidberg_trace_by_deepfry3-d4y0wlc.png"
	end

end
