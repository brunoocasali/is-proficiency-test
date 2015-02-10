require 'rails_helper'

RSpec.describe Course, type: :model do
  context 'DB validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }

    it { is_expected.to validate_presence_of(:status) }
    it {
      is_expected.to validate_inclusion_of(:status).in_array(CourseStatus.list)
    }
  end

  context 'Attributes' do
    it { is_expected.to have_db_column(:status).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
  end

  context 'Indexes' do
    it { is_expected.to have_db_index(:status) }
  end
end

