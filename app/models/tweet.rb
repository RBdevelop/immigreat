class Tweet < ActiveRecord::Base
	belongs_to :users

	validates :message, length: ( maximum: 140,
	  too_long :"% Keep it brief AND let Abbot have it!" )

end
