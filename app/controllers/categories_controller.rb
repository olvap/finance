class CategoriesController < InheritedResources::Base
  belongs_to :user
  before_filter :authenticate_user!
end
