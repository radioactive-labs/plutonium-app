class Blogging::CommentPolicy < Blogging::ResourcePolicy
  # Core actions

  def create?
    true
  end

  def read?
    true
  end

  # Core attributes

  def permitted_attributes_for_create
    [:post, :user, :body]
  end

  def permitted_attributes_for_read
    [:post, :user, :body, :created_at, :updated_at]
  end

  # Associations

  def permitted_associations
    %i[]
  end
end
