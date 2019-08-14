# frozen_string_literal: true

json.course do
  json.categories @course.categories.includes(:wiki) do |cat|
    json.call(cat, :id, :depth, :wiki, :source)
    json.name cat.name_with_prefix
    json.articles_count cat.article_titles.count
  end
end
