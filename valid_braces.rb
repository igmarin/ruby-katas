def validBraces(braces)
  (braces.length / 2).times do |_brace|
    braces.gsub!("{}", "")
    braces.gsub!("[]", "")
    braces.gsub!("()", "")
  end
  braces.empty?
end