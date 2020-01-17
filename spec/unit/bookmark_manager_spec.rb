require_relative '../../lib/bookmark_manager.rb'

describe Bookmark_manager do
  let(:subject) {Bookmark_manager}
  describe '#all' do
    it 'shows all bookmarks' do
      expect(subject.all[0].url).to include 'http://www.google.com'
      expect(subject.all[0].title).to include 'google'
    end
  end

  describe "#create" do
    it "allows a new bookmark to be created" do
      subject.create("Facebook", "http://www.facebook.com")
      expect(subject.all[1].url).to eq("http://www.facebook.com")
      expect(subject.all[1].title).to eq("Facebook")
    end
  end
end

