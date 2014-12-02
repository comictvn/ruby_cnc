class Category < ActiveRecord::Base
	has_many :articles, :dependent => :destroy

  	validates :name, :presence => true
    validates :name, :uniqueness => { :scope => :parent_id, :case_sensitive => false }

   	has_many :childrent, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy
  	belongs_to :parent, :class_name => "Category"
end
