class Website < ActiveRecord::Base
  belongs_to :user
  belongs_to :field_website
  belongs_to :template
end
