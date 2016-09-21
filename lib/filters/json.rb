Nanoc::Filter.define(:json) do |content, content_identifier: :content, **h|
  new_h = h.except(
    :filename, :content_filename, :meta_filename, :extension, :mtime
  )

  {
    content_identifier => content
  }.merge(new_h).to_json
end
