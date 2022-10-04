Trestle.resource(:decks) do
  menu do
    item :decks, icon: "fa fa-star", group: :decks
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :organization
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |deck|
    text_field :title
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
  #   params.require(:deck).permit(:name, ...)
  # end
end
