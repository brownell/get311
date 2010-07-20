class Noun < ActiveRecord::Base

  belongs_to :verb
  has_many :extras
  has_many :solutions
  attr_accessible :verb_id, :phrase, :detail
end
