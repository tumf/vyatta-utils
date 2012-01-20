class Vyatta::Utils::ConfigParser
rule
  stmts: stmt stmts
         {
          result = val[1].unshift(val[0])
         }
       |
        {
          result = []
        }

  stmt: exprss CR #グループ化なし
        {
          result = {
            "values"=>val[0]
            }
        }
      | exprss group CR #グループ化あり
        {
          result = {
            "values"=>val[0],
            "group"=>val[1]
            }
        }
      | CR #空文。改行挟まるところ考えるのめんどい
        {
          result = nil
        }

  exprss: expr exprs #1個以上の式
         {
          result = val[1].unshift(val[0])
         }
  exprs: expr exprs  #0個以上の式
         {
          result = val[1].unshift(val[0])
         }
       |
         {
          result = []
         }

  expr: VAL {result = val[0]}

  group: '{' stmts '}'
        {
          result = val[1]
        }

end
---- inner
  def parse(str)
    @yydebug=true
    @tokens = str.split(/([\t \n\{\}])/).delete_if{|c|
    #空白は削除
     c==" " || c=="\t"
    }.select{|c|
      !c.nil? && c!=""
    }
    #p @tokens
    do_parse()
  end

  def next_token()
    token = @tokens.shift()
    #p token
    case token
    when "\n"
      return [:CR,nil]
    when nil
      return nil
    when "{"
      return ["{",nil]
    when "}"
      return ["}",nil]
    else
      return [:VAL,token]
    end
  end
