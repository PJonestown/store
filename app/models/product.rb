class Product < ActiveRecord::Base
  validates :name, :price, :description, :stock, :presence=>true
  validates :name, :length => { maximum:  30 }
  validates :description, :length => { maximum:  140 }


  validates :price, :numericality => true
  validates :stock, :numericality => { only_integer: true }


end  
