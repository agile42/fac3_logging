Rails.application.routes.draw do
  mount Fac3Logging::Engine => "/fac3_logging"

  get 'test', to: 'test#test'
end
