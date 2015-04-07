class Product < ActiveRecord::Base
  validates :name, :price, :description, :presence=>true
  validates :name, :length => { maximum:  30 }
  validates :description, :length => { maximum:  140 }


end  
