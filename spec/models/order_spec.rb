require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :dish_name}
    it {is_expected.to have_db_column :customer_name}
    it {is_expected.to have_db_column :dish_quantity}
    it {is_expected.to have_db_column :delivery}
  end

  context 'validations' do
    it {is_expected.to validate_presence_of :dish_name}
    it {is_expected.to validate_presence_of :dish_quantity}
    it {is_expected.to validate_presence_of :customer_name}
  end
end
