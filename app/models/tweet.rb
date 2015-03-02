class Tweet < ActiveRecord::Base
	belongs_to :users
	validates :message,
	:presence => true,
	#:length => ( maximum: 140,
	 # too_long :"% Keep it brief AND let Abbot have it!" )

end
