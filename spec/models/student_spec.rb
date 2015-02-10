require 'rails_helper'

RSpec.describe Student, type: :model do
  context 'DB validations' do
    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:register_number) }
    it {
      is_expected.to validate_inclusion_of(:status).in_array(StudentStatus.list)
    }
  end

  context 'Attributes' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:register_number).of_type(:string) }
    it { is_expected.to have_db_column(:status).of_type(:integer) }
  end

  context 'Indexes' do
    it { is_expected.to have_db_index(:status) }
  end
end

