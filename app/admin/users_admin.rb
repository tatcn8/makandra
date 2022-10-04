Trestle.resource(:users) do
  menu do
    item :users, icon: "fa fa-star", group: :users
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :email
    column :organization
    column :admin
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |user|
    text_field :name
    text_field :email
    check_box :admin
    collection_select :organization_id, Organization.all, :id, :name, include_blank: "Select Organization"
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:user).permit(:name, ...)
  # end
end
