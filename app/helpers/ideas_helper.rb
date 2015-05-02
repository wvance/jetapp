module IdeasHelper

	def ideaCardColor(ideaSector)
    sectorColors = Hash[ [ ["Technology", "red lighten-3"], ["Energy", "yellow lighten-3"] ] ]
    if (sectorColors.has_key?(ideaSector))
      sectorColors[ideaSector]
    else 
      ""
    end
  end

end
