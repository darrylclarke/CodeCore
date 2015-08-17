class ColumnPrinter

  WHITE_FG     = "\e[97m"
  NORMAL_FG    = "\e[39m"
  DARK_GREY_BG = "\e[100m"
  NORMAL_BG    = "\e[49m"
  BLUE_FG      = "\e[34m"

  DEBUG        = false

  def initialize
    @lines = []
    @max_length = 0
  end

  attr_accessor :lines

  def << (data_pair_array)
    lines << data_pair_array
  end

  def print
    generate_strings

    puts
    lines.each do |line|
      # varname = line[1].to_s
      # data = eval( "\"\#{#{line[1].to_s}}\"" )
      str_with_data = line[0].ljust( @max_length ) + " : " + BLUE_FG + line[2].to_s + NORMAL_FG
      puts str_with_data
    end
    puts
  end

  private
  # attr_accessor :max_length

  def generate_strings
    for n in 0...lines.count
      puts "Debug - lines[n].class = #{lines[n].class}" if DEBUG
      if lines[n].kind_of?(Array)
        if lines[n].count >= 3
          pieces = /(.*)(@@)(.*)/.match lines[n][0]
          if pieces[2] && pieces[2] == "@@"
            # Re-define the format string with the proper text inserted
            lines[n][0] = pieces[1] + WHITE_FG + DARK_GREY_BG + lines[n][1].to_s + NORMAL_BG + NORMAL_FG + pieces[3]
          else
            lines[n][0] += " "
            lines[n][0] += WHITE_FG + DARK_GREY_BG + lines[n][1].to_s + NORMAL_BG + NORMAL_FG
          end
        elsif lines[n].count == 2
          if lines[n][0].kind_of?(Symbol)
            label = WHITE_FG + DARK_GREY_BG + lines[n][0].to_s + NORMAL_BG + NORMAL_FG
          else
            label = lines[n][0].to_s + WHITE_FG + DARK_GREY_BG + NORMAL_BG + NORMAL_FG
          end
          data  = lines[n][1]
          lines[n] = [label, nil, data]
        elsif lines[n].count == 1
          data = lines[n][0]
          lines[n] = [ "Value1" + WHITE_FG + DARK_GREY_BG + NORMAL_BG + NORMAL_FG, nil, data ]
        end
      else
        data = lines[n]
        lines[n] = [ "Value2" + WHITE_FG + DARK_GREY_BG + NORMAL_BG + NORMAL_FG, nil, data ]
      end

      if lines[n][0].length > @max_length
        @max_length = lines[n][0].length
      end
      puts "Debug - length = #{lines[n][0].length} - max = #{@max_length}" if DEBUG
    end
  end
end
