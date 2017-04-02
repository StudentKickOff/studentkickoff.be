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

  def year_to_crew(year)
    p year
    items.find_all("/meetthecrew/#{year}/*.md")
  end

  def latest_crew_year
    items.find_all('/meetthecrew/*/*.md')
         .sort_by(&:identifier)
         .map { |e| e.identifier.to_s.split('/')[2] }
         .uniq
         .last
  end

  def latest_crew
    year_to_crew(latest_crew_year)
  end

  def teams
    items.find_all('/meetthecrew/*').select { |x| x[:crew] == 'team' }
  end
end
