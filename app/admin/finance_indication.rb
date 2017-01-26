ActiveAdmin.register FinanceIndication do
  config.sort_order = "id_asc"    
  permit_params  :finance_id, :date, :value
end
