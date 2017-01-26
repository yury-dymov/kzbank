ActiveAdmin.register CurrencyExchange do
  config.sort_order = "id_asc"    
  permit_params :title, :value, :date
end
