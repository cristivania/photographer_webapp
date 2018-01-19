class Gallery < ActiveRecord

  has_many :pictures, :dependent => :destroy
end
