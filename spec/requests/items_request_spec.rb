require 'rails_helper'

describe 'user can view a list of items' do
  it "when visiting '/api/v1/items'" do
    create_list(:item, 3)

    visit "/api/v1/items"

    items = JSON.parse(response.body)
    byebug
    expect(response).to be_success
    expect(items.firt).to have_key "id"
    expect(items.firt).to have_key "name"
    expect(items.firt).to have_key "description"
    expect(items.firt).to have_key "image_url"
    expect(items.firt).to_not have_key "created_at"
    expect(items.firt).to_not have_key "updated_at"

  end
end

 # id, name, description, and image_url but not the created_at or updated_at
