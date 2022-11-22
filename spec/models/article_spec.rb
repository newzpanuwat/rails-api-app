require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "#Fields" do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:url).of_type(:string) }
    it { should have_db_column(:posted_by).of_type(:string) }
  end
end
