class Hash
  def except(*keys)
    reject { |k, _| keys.include? k }
  end
end
