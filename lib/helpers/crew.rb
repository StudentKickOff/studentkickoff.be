# frozen_string_literal: true

module CrewHelper
  def crew_list
    l = @items['/**/leden.*'][:leden]

    l.map do |e|
      e.merge(email: e[:naam].downcase.tr(' ', '.'))
      e[:foto] ||= ActiveSupport::Inflector.transliterate(e[:naam].downcase.tr(' ', '')) + '.jpg'
      e
    end
  end

  def crew_map
    crew_list.map { |e| [e[:naam], e] }.to_h
  end

  def crew_of(year)
    @items.find_all("/crew/#{year}/*.md")
  end

  def crew_item_of(year)
    @items["/crew/#{year}.*"]
  end

  def crew_years
    @items.find_all('/crew/*/*.md')
          .map { |e| e.identifier.to_s.split('/')[2] }
          .uniq
  end

  def latest_crew_year
    crew_years.last
  end

  def latest_crew
    crew_of(latest_crew_year)
  end
end
