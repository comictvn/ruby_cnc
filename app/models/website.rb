class Website < ActiveRecord::Base
  belongs_to :user
  belongs_to :field_website
end
