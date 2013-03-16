require 'spec_helper'

describe 'Accounts' do 
  describe 'get /banks' do
    it 'displays the New Link' do
      visit banks_path
      page.should have_link('New')
    end
  end

  describe 'get /banks/new' do
    it 'displays the Bank form', :js => true do
      visit banks_path
      click_link('New')
      page.should have_button('Create Bank')
    end
  end
end