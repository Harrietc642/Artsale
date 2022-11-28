ActiveAdmin.register Artwork do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :price, :brand, :inspiration_id, :genre, :inspiration_name, :bitcoin_address, :image
  #, artwork_genres: [id, :artworks_id, :genre_id, :_destroy]
  #
  # or  # add the image upload function in
  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end

  #
  # permit_params do
  #   permitted = [:title, :price, :brand, :inspiration_id, :genre, :inspiration_name, :bitcoin_address]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
