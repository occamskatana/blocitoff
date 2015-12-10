require 'rails_helper'

RSpec.describe Item, type: :model do
let(:user) {User.create!(email: "user@blocitoff.com", password: "helloworld")}
let(:item) {create(:item)}

it {should belong_to(:user)}



end
