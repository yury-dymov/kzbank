ActiveAdmin.register Commodity do
  config.sort_order = "id_asc"    
  permit_params :title, :value, :date
end
