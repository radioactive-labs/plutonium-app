# == Schema Information
#
# Table name: blogging_posts
#
#  id           :integer          not null, primary key
#  content      :text             not null
#  published_at :datetime
#  title        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer          not null
#
# Indexes
#
#  index_blogging_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require_relative "../blogging"

class Blogging::Post < Blogging::ResourceRecord
  # add concerns above.

  # add model configurations above.

  belongs_to :user
  # add belongs_to associations above.

  # add has_one associations above.

  has_many :comments
  accepts_nested_attributes_for :comments
  # add has_many associations above.

  # add attachments above.

  # add scopes above.

  validates :title, presence: true
  validates :content, presence: true
  # add validations above.

  # add callbacks above.

  # add delegations above.

  # add misc attribute macros above.

  # add methods above.
end
