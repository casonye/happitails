class Shelter < ActiveRecord::Base

	has_many :clients, dependent: :destroy
	has_many :animals, dependent: :destroy

end
