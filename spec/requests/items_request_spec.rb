require 'rails_helper'

describe 'user can view a list of items' do
  it "when visiting '/api/v1/items'" do
    create_list(:item, 3)

    get "/api/v1/items"

    items = JSON.parse(response.body)
    item = items.first

    expect(response).to be_success
    expect(item).to have_key "id"
    expect(item).to have_key "name"
    expect(item).to have_key "description"
    expect(item).to have_key "image_url"
    expect(item).to_not have_key "created_at"
    expect(item).to_not have_key "updated_at"

  end
end
