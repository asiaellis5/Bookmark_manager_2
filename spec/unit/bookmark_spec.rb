require_relative '../../lib/bookmarks.rb'

describe Bookmarks do
  describe '#all' do
    it 'shows all bookmarks' do
      truncate_test_db
      add_to_test_db
      expect(subject.all).to include 'http://www.google.com'
    end
  end
end

