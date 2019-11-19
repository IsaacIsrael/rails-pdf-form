Rails.application.routes.draw do
  root to: 'pages#home'

  get "pages/download_pdf"
end
