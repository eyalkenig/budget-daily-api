Rails.application.routes.draw do
  scope :path => '/v1' do
    post 'authenticate', to: 'authentication#authenticate'

    resources :expenses
    resources :incomes
    resources :setups
    resources :items

    get '/summary/daily' => 'summary#daily_report'
  end

end
