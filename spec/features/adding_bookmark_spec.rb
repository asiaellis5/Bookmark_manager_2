feature "Adding Bookmarks" do
  scenario "allows adding a new bookmark" do
    visit('/')
    fill_in :url, with: "http://facebook.com"
    click_button 'Add Bookmark'
    expect(page).to have_content "http://facebook.com"
  end
end