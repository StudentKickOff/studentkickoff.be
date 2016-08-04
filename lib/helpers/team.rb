module TeamHelper
  def teams
    items.find_all('/meetthecrew/*').select { |x| x[:crew] == 'team' }
  end
end
