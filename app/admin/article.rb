ActiveAdmin.register Article do
	 controller do
    #...
    def permitted_params
      params.permit(:article => [:title, :text, :subtitle,:user_id])
      # params.permit! # allow all parameters
    end
  end

index do
    # selectable_column
    # column "", :sortable => false do |user|
    #   "<img src='#{user.avatar_url}' alt='user avatar' style='width:24px; height:24px;'/>".html_safe
    # end
    
    column :title
    column :text
    column :user_id
     column 'Likes', sortable: :likes_count do |article|
      article.likes.count

    end
    column 'DisLikes', sortable: :dislikes_count do |article|
      article.dislikes.count
    end
    column 'Comments', sortable: :comments_count do |article|
      article.comments.count
    end
    #column :allow_notifications do |user| user.allow_notifications ? "true" : "false" end
    #column :blocked do |user| user.blocked ? "true" : "false" end
    column :created_at

    actions
  end







form do |f|
    inputs 'Details' do
      input :title
      input :subtitle, label: "Sub Title"
      input :text, label: "Article text"
      input :user_id, :label => 'Author', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
    end
    actions
  end



# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
