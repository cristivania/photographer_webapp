class Gallery < ActiveRecord::Base

  has_many :post, :dependent => :destroy
end
