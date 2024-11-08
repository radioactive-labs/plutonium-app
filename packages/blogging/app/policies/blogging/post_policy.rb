class Blogging::PostPolicy < Blogging::ResourcePolicy
  # Core actions

  def create?
    true
  end

  def read?
    true
  end

  def publish?
    !record.published_at
  end

  # Core attributes

  def permitted_attributes_for_create
    [:user, :title, :content]
  end

  def permitted_attributes_for_read
    [:user, :title, :content, :published_at, :created_at, :updated_at]
  end

  def permitted_attributes_for_index
    [:user, :title, :published_at, :created_at]
  end

  # Associations

  def permitted_associations
    %i[]
  end
end
