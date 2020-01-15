feature 'Bookmark list' do
  scenario 'shows bookmark list' do
    truncate_test_db
    add_to_test_db
    visit '/'
    click_button 'Submit'
    expect(page).to have_content('google')
  end
end