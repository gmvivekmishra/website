class Comment < ApplicationRecord
  validates_presence_of :fid, :user, :post
  validates_uniqueness_of :fid

  belongs_to :user
  belongs_to :post, counter_cache: true
end
