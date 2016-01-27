def segment_string(str)
  # Loop through string until all groups of letters match a dictionary entry with no dangling letters
  # Dictionary= a, are, you , for, real, yo
  # new=[]
  # Str=areyouforreal

  # is "a" a match to the dictionary? -t - hold it? move out to new array?
  # move to next element
  # is "r" a match to the dictionary?-f
  # re-f
  # ref-f
  # refo-f
  # refor-f
  # reforr-f
  # reforre-f
  # reforrea-f
  # reforreal-f
  # End of string
  # Is Array empty?=has dangling letters?-t
  # If true bring last word moved back to original array to original spot
  # Start at end of last word moved and add next letter
  # is ar a match to the dictionary-f
  # are-t-hold
  # y-f
  # yo-t-hold
  # u-f
  # uf-f
  # ufor-f
  # uforr-f
  # uforre-f
  # uforrea-f
  # uforreal-f
  # end of string. 
  # go back to last true statement and add next letter
  # you-t
  # f-f
  # fo-f
  # for-t
  # r-f
  # re-f
  # rea-f
  # real-t-hold
  # end of string


end