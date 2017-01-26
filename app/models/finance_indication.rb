class FinanceIndication < ActiveRecord::Base
  has_modata  

  belongs_to :finance
end
