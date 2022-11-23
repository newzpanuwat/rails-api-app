require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "#Fields" do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:url).of_type(:string) }
    it { should have_db_column(:posted_by).of_type(:string) }
  end

  describe "#Validation" do
    let!(:my_article)           { FactoryBot.create(:article) }

    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_most(100) }

    it { should validate_presence_of(:url) }
    it { should validate_length_of(:url).is_at_most(200) }

    it { should validate_presence_of(:posted_by) }
    it { should validate_length_of(:posted_by).is_at_most(100) }
  end
end
