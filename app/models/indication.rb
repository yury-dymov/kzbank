class Indication < ActiveRecord::Base
  has_modata

  belongs_to :exchange
end
