require 'rails_helper'

describe Store do
  it "should be vaild with valid attrs" do
    valid_attrs = {
      "storeType": "Mobile SAS",
      "longName": "Cherry Creek Shopping Center",
      "city": "Denver",
      "phone": "303-270-9189",
      "distance": 3.45
    }

    store = Store.new(valid_attrs)

    expect(store).to be_instance_of Store
    expect(store.name).to eq "Cherry Creek Shopping Center"
    expect(store.city).to eq "Denver"
    expect(store.distance).to eq 3.45
    expect(store.phone_number).to eq "303-270-9189"
    expect(store.store_type).to eq "Mobile SAS"
  end
end
