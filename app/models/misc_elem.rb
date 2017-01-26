class MiscElem < ActiveRecord::Base
  has_modata

  belongs_to :misc_block
end
