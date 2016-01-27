dictionary = ["avacado","burrito","cat","dog","elephant","fox","grape","ham", "hampsters","ice","jello","kangaroo","lego","man","north","oak","pure","quest","real","small","trouble","universe","vast","world","xray","yellow","zebra"]

dictionary_as_string = dictionary.join("|")
string = "avacadocatdogburrito"
result = []
while (hit = string.match(dictionary_as_string)) do
  string.gsub!(hit[0]) do
  result << hit[0]
  puts ""
  end
end
puts result.join(" ")
