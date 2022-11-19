ActiveAdmin.register Artwork do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :price, :brand, :inspiration_id, :genre, :inspiration_name, :bitcoin_address
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :price, :brand, :inspiration_id, :genre, :inspiration_name, :bitcoin_address]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
