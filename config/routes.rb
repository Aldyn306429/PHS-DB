Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :students, param: :short_id
    end
  end
end
