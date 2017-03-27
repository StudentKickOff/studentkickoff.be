module SectionHelper
  def section(colour = :red, opts = {}, &block)
    render('/section.*', opts.merge(colour: colour), &block)
  end
end
