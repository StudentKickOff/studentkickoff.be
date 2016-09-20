Nanoc::Filter.define(:json) do |content, content_identifier: :content, **h|
  {
    content_identifier => content
  }.merge(h).to_json
end
