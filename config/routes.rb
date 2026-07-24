# config/routes.rb

Rails.application.routes.draw do
  # 商品登録
  get 'products/new'
  post 'products', to: 'products#create'  # 登録

  # 商品一覧
  get 'products', to: 'products#index'

  # 商品詳細
  get 'products/:id', to: 'products#show', as: 'product'

  # トップページ
  root to: "homes#top"

  # 省略

end