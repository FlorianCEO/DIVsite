require "administrate/base_dashboard"

class ArticleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    position: Field::Number,
    title: Field::String,
    soustitre: Field::String,
    description: Field::Text,
    image: PaperclipField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :position,
    :title,
    :soustitre,
    :description,
    :image,
    :created_at,
    :slug
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :position,
    :title,
    :soustitre,
    :description,
    :image,
    :created_at,
    :updated_at,
    :slug
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :position,
    :title,
    :soustitre,
    :description,
    :image,
    :slug
  ].freeze

  # Overwrite this method to customize how articles are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(article)
     article.title
  end
end
