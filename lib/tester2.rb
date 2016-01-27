dictionary = ["avacado","burrito","cat","dog","elephant","fox","grape","hampsters","ice","jello","kangaroo","lego","man","north","oak","pure","quest","real","small","trouble","universe","vast","world","xray","yellow","zebra"]
regexp = dictionary.sort_by(&:length).reverse.join('|')
string = "avacadohampstersburrito"
result = []
while (hit = string.match(regexp)) do
  string.gsub!(hit[0]) do
   result << hit[0]
   '*'
  end
end
result.join(" ")
