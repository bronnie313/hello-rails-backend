# config/application.rb or config/environments/development.rb

  config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3001' # Add any other origins as needed
      resource '/api/v1/',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end