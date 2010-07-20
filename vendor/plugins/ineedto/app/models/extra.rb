class Extra < ActiveRecord::Base

  belongs_to :verb
  belongs_to :noun
  has_many :solutions

  attr_accessible :verb_id, :noun_id, :phrase, :detail
end
