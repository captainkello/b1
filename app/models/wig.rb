class Wig < ActiveRecord::Base
  validates :color,  :presence => true
  validates :style, :presence => true,
                    :length => { :minimum => 5 }
end
