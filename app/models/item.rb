class Item < ActiveRecord::Base
	require 'action_view'
	include ActionView::Helpers::DateHelper

  belongs_to :user

  default_scope {order('created_at DESC')}

  validates :name, length: {minimum: 5}, presence: true
end
