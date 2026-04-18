class Lexicon

  def Lexicon.scan(direction)
    return_array = []

    direction = direction.split(' ')

    direction.each do |each|
      
      # lowercase strings
      each = each.downcase

      if each == "north" || each =="east" || each == "south" || each == "west"
        # directions
        return_array.push(['direction', each]); next
      elsif each == "go" || each == "kill" || each == "eat"
        # verb
        return_array.push(['verb', each]); next
      elsif each == "the" || each == "in" || each == "of"
        # stop
        return_array.push(['stop', each]); next
      elsif each == "bear" || each == "princess"
        # noun
        return_array.push(['noun', each]); next
      elsif each.to_i > 0
        # number
        return_array.push(['number', each.to_i]); next
      end

      # error
      return_array.push(['error', each])
    end
    
    return return_array
  end
end