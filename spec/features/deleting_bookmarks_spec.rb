feature "Deleting Bookmarks" do
  scenario "allows deleting bookmarks" do
    visit('/bookmark')
    expect(page).to have_content "google"

    find("#Deletegoogle").click

    expect(page).not_to have_content 'google'
  end
end