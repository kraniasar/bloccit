Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'weclome/faq'

  root to: 'welcome#index'

end
