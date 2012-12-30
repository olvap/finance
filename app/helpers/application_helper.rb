module ApplicationHelper

  def income_button user
    link_to new_user_income_path(user), class: 'btn btn-success' do
      content_tag(:i, "", class: 'icon-plus-sign icon-white')
    end
  end

  def expense_button user
    link_to new_user_expense_path(user), class: 'btn btn-danger' do
      content_tag(:i, "", class: 'icon-minus-sign icon-white')
    end
  end

  def new_button url, name = "New"
    link_to name, url, class: 'btn btn-mini btn-primary span1'
  end

  def edit_button url, name = "Edit"
    link_to name, url, class: 'btn btn-mini'
  end

  def destroy_button url, name = "Destroy"
    link_to name, url, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger btn-mini'
  end

  def show_button url, name = "Show"
    edit_button(url, name)
  end
end