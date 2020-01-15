require_relative '../../lib/bookmarks.rb'

describe Bookmarks do
  let(:subject) {Bookmarks.all}
  describe '#all' do
    it 'shows all bookmarks' do
      expect(subject).to include 'http://www.google.com'
    end
  end
end

