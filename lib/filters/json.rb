def fix_utf8(str)
  str.encode('cp1252',
             fallback: {
               "\u0081" => "\x81".force_encoding('cp1252'),
               "\u008D" => "\x8D".force_encoding('cp1252'),
               "\u008F" => "\x8F".force_encoding('cp1252'),
               "\u0090" => "\x90".force_encoding('cp1252'),
               "\u009D" => "\x9D".force_encoding('cp1252')
             })
     .force_encoding('utf-8')
end

Nanoc::Filter.define(:json) do |content, content_identifier: :content, **h|
  new_h = h.except(
    :filename, :content_filename, :meta_filename, :extension, :mtime
  )

  json = {
    content_identifier => content
  }.merge(new_h).to_json

  fix_utf8(json)
end
