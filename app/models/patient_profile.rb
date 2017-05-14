class PatientProfile < ApplicationRecord
	belongs_to :user
	has_many :insurance
end