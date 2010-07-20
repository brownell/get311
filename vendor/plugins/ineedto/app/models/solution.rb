class Solution < ActiveRecord::Base

  belongs_to :verb
  belongs_to :noun
  belongs_to :extra
  attr_accessible :verb_id, :noun_id, :extra_id, :name, :detail, :url
end
