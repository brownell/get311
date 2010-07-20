class Verb < ActiveRecord::Base

  has_many :nouns
  has_many :extras
  has_many :solutions
  attr_accessible :phrase, :detail
end
