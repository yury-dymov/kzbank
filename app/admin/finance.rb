ActiveAdmin.register Finance do
  config.sort_order = "id_asc"    
  permit_params :title, :type_id, :bold
end
