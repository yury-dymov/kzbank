ActiveAdmin.register MiscElem do
  config.sort_order = "id_asc"    
  permit_params :misc_block_id, :title, :value, :color
end
