class Subject < ApplicationRecord
    scope :visible, lambda { where(:visible => true)}
    # Ex:- scope :active, -> {where(:active => true)}
    scope :invisible, lambda { where(:visible => false)}
    scope :sorted, lambda { order("position ASC")}
    scope :newest_first, lambda { order("created_at DESC")}
    scope :search, lambda { where(:visible => false)}
    scope :visible, lambda {|query| where(["name LIKE ?", "%#{query}%"])
}

end
