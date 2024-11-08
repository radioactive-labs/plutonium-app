# == Schema Information
#
# Table name: blogging_comments
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_blogging_comments_on_post_id  (post_id)
#  index_blogging_comments_on_user_id  (user_id)
#
# Foreign Keys
#
#  post_id  (post_id => blogging_posts.id)
#  user_id  (user_id => users.id)
#
require_relative "../blogging"

class Blogging::Comment < Blogging::ResourceRecord
  # add concerns above.

  # add model configurations above.

  belongs_to :post, class_name: "Blogging::Post"
  belongs_to :user
  # add belongs_to associations above.

  # add has_one associations above.

  # add has_many associations above.

  # add attachments above.

  # add scopes above.

  validates :body, presence: true
  # add validations above.

  # add callbacks above.

  # add delegations above.

  # add misc attribute macros above.

  # add methods above.
end
