require_relative '../../lib/bookmarks.rb'

describe Bookmarks do
  let(:subject) {Bookmarks}
  describe '#all' do
    it 'shows all bookmarks' do
      expect(subject.all).to include 'http://www.google.com'
    end
  end

  describe "#create" do
    it "allows a new bookmark to be created" do
      subject.create("http://www.facebook.com")
      expect(subject.all).to include "http://www.facebook.com"
    end
  end
end

