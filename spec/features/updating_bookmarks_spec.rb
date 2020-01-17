feature "Updating Bookmarks" do
  scenario "allows updating bookmarks" do
    visit('/bookmark')
    expect(page).to have_content "google"

    fill_in :title, with: 'Youtube'
    fill_in :url, with: 'www.youtube.com'
    find("#Updategoogle").click

    expect(page).to have_content 'Youtube'
  end
end