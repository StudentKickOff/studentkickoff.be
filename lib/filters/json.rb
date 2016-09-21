Nanoc::Filter.define(:json) do |content, content_identifier: :content, **h|
  {
    content_identifier => content
  }.merge(h.except(
            :filename, :content_filename, :meta_filename, :extension, :mtime
  )).to_json
end
