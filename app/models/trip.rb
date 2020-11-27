class Trip < ApplicationRecord
    validates :title, :presence => true
    validates :title, :uniqueness => true
    validates :description, :length => { :maximum => 1000}
end
