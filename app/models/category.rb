class Category < ActiveRecord::Base
# validates :name, :presence => {:message => 'Name cannot be blank, Task not saved'}
 #validates :thumburl, presence: true
 validates_presence_of :name,  :presence => true
 validates_presence_of :thumburl, :presence => true
 has_many :products
end
