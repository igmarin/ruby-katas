def sort_csv_columns(csv_data)
  splited_data = csv_data.split.map { |v| v.split(',') }
  h = {}
  splited_data[0].each_with_index { |v, i| h[i] = v }
  hh = h.sort { |l, r| l[1].downcase <=> r[1].downcase }
  order = hh.map { |e| e[0] }

  splited_data.map { |line| line.values_at(*order) }.map { |l| l.join(',') }.join("\n")
end

puts sort_csv_columns("Beth,Charles,Danielle,Adam,Eric\n17945,10091,10088,3907,10132\n2,12,13,48,11")