feature "Adding Bookmarks" do
  scenario "allows adding a new bookmark" do
    visit('/')
    fill_in :title, with: "FACEBOOK"
    fill_in :url, with: "http://facebook.com"
    click_button 'Add Bookmark'
    expect(page).to have_content "FACEBOOK"
  end
end