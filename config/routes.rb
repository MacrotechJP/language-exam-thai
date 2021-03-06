Rails.application.routes.draw do
  
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords"
  }

  root to: 'question#index'
  get "/question", to: "question#setting"
  post "/question", to: "question#practice"
  get "/dictionary", to: "dictionary#index"
  post "/recommend", to: "recommend#index"

  # 管理者ページ
  get "/admin", to: "admin#analytics_list"  # 分析[一覧]
  get "/admin/dictionary_list", to: "admin#dictionary_list" # 辞書[データ一覧]

  # 非同期Ajaxリクエスト
  get "asynchronous", to: "application#asynchronous"
end
