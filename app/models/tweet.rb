class Tweet < ActiveRecord::Base
	belongs_to :users
	validates :message,
	:presence => true,
	:length => { 
		minimum: 2,
		maximum: 140,
	  	too_long: "% Keep it brief AND let Abbot have it!" )

end
