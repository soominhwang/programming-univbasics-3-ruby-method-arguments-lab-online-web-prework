#introduction
def introduction(name)
  puts "Hi, my name is #{name}."
end

#introduction_with_language
def introduction_with_language(name, language)
  puts "Hi, my name is #{name} and I am learning to program in #{language}."
end

#introduction_with_language_optional
def introduction_with_language_optional(name, language)
  puts "Hi, my name is #{name} and I am learning to program in #{language}."
  language="Ruby"
end


describe "#introduction_with_language_optional" do
  it "takes in two arguments, a name and a language, and language defaults to Ruby" do
    expect{introduction_with_language_optional("Edwin")}.to output("Hi, my name is Edwin and I am learning to program in Ruby.\n").to_stdout
  end
end

describe "#introduction_with_language_optional" do
  it "takes in two arguments, a name and a language, language can be optional or defined" do
    expect{introduction_with_language_optional("Edwin", "Python")}.to output("Hi, my name is Edwin and I am learning to program in Python.\n").to_stdout
  end
end
