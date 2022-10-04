Trestle.resource(:cards) do
  menu do
    item :cards, icon: "fa fa-star", group: :cards
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :deck
    column :body
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |card|
    text_field :title
    text_field :body
    collection_select :deck_id, Deck.all, :id, :title, include_blank: "Select Deck"
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:card).permit(:name, ...)
  # end
end
