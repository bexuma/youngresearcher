json.extract! diary, :id, :title, :content, :slug, :created_at, :updated_at
json.url diary_url(diary, format: :json)