Nanoc::Filter.define(:json) do |content, content_identifier: :content, **h|
  { content_identifier => content }.update(h).to_json
end
