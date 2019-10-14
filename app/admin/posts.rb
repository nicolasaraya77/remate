ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :title, :content
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :title, :content]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :user_id, :title, :content

  index do
    column :id
    column :author do |post|
      post.user.name
    end
    column :title
    column :comments do |post|
      post.comments.count
    end
    actions
  end

  form do |f|
     inputs 'Agregar nuevo Post' do
       f. input :user_id,
                label: 'Author',
                as: :select,
                collection: User.pluck(:name, :id)
          input :title
          input :content
        end 
     end

  filter :created_at
end
