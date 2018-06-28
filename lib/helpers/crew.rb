# frozen_string_literal: true

module CrewHelper
  def crew_list
    @items['/**/leden.*'][:leden]
  end

  # Maps the name of a crewmember to its item
  def crew_map
    crew_list.map { |e| [e[:naam], e] }.to_h
  end

  # Return the crew items of a certain year
  def crew_of(year)
    @items.find_all("/crew/#{year}/*.md")
  end

  # Return the crew overview item of a certain year
  def crew_item_of(year)
    @items["/crew/#{year}.*"]
  end

  def crew_years
    @items.find_all('/crew/*/*.md')
          .map { |e| e.identifier.to_s.split('/')[2] }
          .uniq
          .sort
  end

  def latest_crew_year
    crew_years.last
  end

  def latest_crew_overview
    crew_item_of(latest_crew_year)
  end

  def latest_crew
    crew_of(latest_crew_year)
  end
end
