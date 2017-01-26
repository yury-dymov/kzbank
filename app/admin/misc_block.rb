ActiveAdmin.register MiscBlock do
  config.sort_order = "id_asc"    
  permit_params :screen_id, :title
end
