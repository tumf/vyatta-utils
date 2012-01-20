require 'optparse'
require 'vyattaparser'
# raccを使用
#vyattaparser.rbは
# $ racc parse.y -o vyattaparser.rb
#で生成する
#raccのインストールは
# $ gem install racc

def walk_statements(stmts,prefix="")
  res = ""
  stmts.compact.each{|stmt|
    if stmt.has_key?("group")
      res += walk_statements(stmt["group"],prefix+" "+stmt["values"].join(" "))
    else
      res += "set "+prefix+" "+stmt["values"].join(" ")+"\n"
    end
  }
  res
end
def exit_with_show_usage
  puts "usage: ruby convert.rb -i infile [-o outfile]"
  exit
end

opt=OptionParser.new
infile = nil
outfile = nil
opt.on('-i VAL'){|v| infile=v}
opt.on('-o VAL'){|v| outfile=v}
opt.on('-h'){|v| 
  exit_with_show_usage
}
opt.parse!(ARGV)
if !infile
  exit_with_show_usage
end

stmts = nil
parser = VyattaParser.new()
open(infile){|f|
  stmts = parser.parse(f.read)
}
res = walk_statements(stmts)
if outfile
  open(outfile,"w"){|f|
    f.write(res)
  }
else
  puts res
end
