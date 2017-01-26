ActiveAdmin.register Indication do
  config.sort_order = "id_asc"    
  menu label: "Stocks"  
  
  permit_params :exchange_id, :current_value, :opening_value, :min_value, :max_value, :date, :id


end
