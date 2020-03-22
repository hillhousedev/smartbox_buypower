json.extract! token, :id, :amount, :toks, :created_at, :updated_at
json.url token_url(token, format: :json)
