Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'localhost:3002' # Add other origins as needed
      resource '/api/*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
  