#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.7
# from Racc grammer file "".
#

require 'racc/parser.rb'
module Vyatta
  module Utils
    class ConfigParser < Racc::Parser

module_eval(<<'...end config.y/module_eval...', 'config.y', 52)
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
...end config.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    11,     3,    12,     2,     3,     2,     3,     2,     3,     9,
    15,     3,    17,    18 ]

racc_action_check = [
     6,     7,     6,     0,     0,    12,    12,     5,     5,     4,
     9,     1,    13,    16 ]

racc_action_pointer = [
     1,     8,   nil,   nil,     9,     5,    -2,    -2,   nil,    10,
   nil,   nil,     3,    10,   nil,   nil,     8,   nil,   nil ]

racc_action_default = [
    -2,    -8,    -5,    -9,   -11,    -2,   -11,    -8,    -6,   -11,
    -1,    -3,    -2,   -11,    -7,    19,   -11,    -4,   -10 ]

racc_goto_table = [
     4,     7,     8,    13,   nil,    10,   nil,     7,    14,   nil,
   nil,   nil,    16 ]

racc_goto_check = [
     1,     5,     6,     4,   nil,     1,   nil,     5,     6,   nil,
   nil,   nil,     1 ]

racc_goto_pointer = [
   nil,     0,   nil,   nil,    -3,     0,     1 ]

racc_goto_default = [
   nil,   nil,     5,     6,   nil,     1,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  2, 7, :_reduce_1,
  0, 7, :_reduce_2,
  2, 8, :_reduce_3,
  3, 8, :_reduce_4,
  1, 8, :_reduce_5,
  2, 9, :_reduce_6,
  2, 12, :_reduce_7,
  0, 12, :_reduce_8,
  1, 11, :_reduce_9,
  3, 10, :_reduce_10 ]

racc_reduce_n = 11

racc_shift_n = 19

racc_token_table = {
  false => 0,
  :error => 1,
  :CR => 2,
  :VAL => 3,
  "{" => 4,
  "}" => 5 }

racc_nt_base = 6

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "CR",
  "VAL",
  "\"{\"",
  "\"}\"",
  "$start",
  "stmts",
  "stmt",
  "exprss",
  "group",
  "expr",
  "exprs" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'config.y', 4)
  def _reduce_1(val, _values, result)
              result = val[1].unshift(val[0])
         
    result
  end
.,.,

module_eval(<<'.,.,', 'config.y', 8)
  def _reduce_2(val, _values, result)
              result = []
        
    result
  end
.,.,

module_eval(<<'.,.,', 'config.y', 13)
  def _reduce_3(val, _values, result)
              result = {
            "values"=>val[0]
            }
        
    result
  end
.,.,

module_eval(<<'.,.,', 'config.y', 19)
  def _reduce_4(val, _values, result)
              result = {
            "values"=>val[0],
            "group"=>val[1]
            }
        
    result
  end
.,.,

module_eval(<<'.,.,', 'config.y', 26)
  def _reduce_5(val, _values, result)
              result = nil
        
    result
  end
.,.,

module_eval(<<'.,.,', 'config.y', 31)
  def _reduce_6(val, _values, result)
              result = val[1].unshift(val[0])
         
    result
  end
.,.,

module_eval(<<'.,.,', 'config.y', 35)
  def _reduce_7(val, _values, result)
              result = val[1].unshift(val[0])
         
    result
  end
.,.,

module_eval(<<'.,.,', 'config.y', 39)
  def _reduce_8(val, _values, result)
              result = []
         
    result
  end
.,.,

module_eval(<<'.,.,', 'config.y', 42)
  def _reduce_9(val, _values, result)
    result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'config.y', 46)
  def _reduce_10(val, _values, result)
              result = val[1]
        
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

    end   # class ConfigParser
    end   # module Utils
  end   # module Vyatta
