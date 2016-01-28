require_relative 'dictionary'  

def segment_string(str)
  
  final = []
  i = 0
  end_point = 0
  lc_str=str.downcase
  plural
  
  while i <= lc_str.downcase.length do
    x = lc_str[end_point..i]
    if valid_word?(x)
      final << x
      end_point = i + 1
    end

    i += 1
  end

  p final
end
