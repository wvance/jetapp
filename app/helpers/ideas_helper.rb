module IdeasHelper

	def ideaCardColor(ideaSector)
    sectorColors = Hash[[	
    	['Defense & Security','red lighten-2'],
	    ['Infrastructure','orange lighten-2'],
	    ['Communications','lime-green lighten-2'],
	    ['Energy/Utilities','yellow lighten-2'],
	    ['Chemicals','purple lighten-2'],
	    ['Construction','brown lighten-2'],
	    ['Entertainment','light-blue lighten-2'],
	    ['Financial','green lighten-2'],
	    ['Government','teal lighten-2'],
	    ['Healthcare','pink lighten-2'],
	    ['Manufacturing','deep-orange lighten-2'],
	    ['Retail','indigo lighten-2'],
	    ['Technology','blue lighten-2'],
	    ['Other', 'blue-grey lighten-2']
		]]
    if (sectorColors.has_key?(ideaSector))
      sectorColors[ideaSector]
    else 
      ""
    end
  end

end
