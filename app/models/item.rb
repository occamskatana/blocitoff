class Item < ActiveRecord::Base
	require 'action_view'
	include ActionView::Helpers::DateHelper

  belongs_to :user

  validates :name, length: {minimum: 5}, presence: true
end
