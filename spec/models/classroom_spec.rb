require 'rails_helper'

RSpec.describe Classroom, type: :model do
  context 'Associations' do
    it { is_expected.to belong_to(:student) }
    it { is_expected.to belong_to(:course) }
  end

  context 'Attributes' do
    it { is_expected.to have_db_column(:entry_at).of_type(:date) }
    it { is_expected.to have_db_column(:student_id).of_type(:integer) }
    it { is_expected.to have_db_column(:course_id).of_type(:integer) }
  end

  context 'Indexes' do
    it { is_expected.to have_db_index(:student_id) }
    it { is_expected.to have_db_index(:course_id) }
  end
end

