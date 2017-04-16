require "./skyline-cr/*"

class SkylineException < Exception
end

module Skyline::Cr
  extend self

  enum Domination
    Dominate
    NonDominate
    BeDominated
  end

  def dominate?(attrs1 : Array, attrs2 : Array)
    if attrs1.size != attrs2.size
      raise SkylineException.new("Two Attributes size is not match.")
    end
    check_size = attrs1.size
    check_flag = 0
    attrs1.zip(attrs2).each do |attr1, attr2|
      case
      when attr1 < attr2
        check_flag -= 1
      when attr1 > attr2
        check_flag += 1
      when attr1 == attr2
        check_size -= 1
      end
    end

    if check_flag == -check_size
      return Domination::Dominate
    elsif check_flag == check_size
      return Domination::BeDominated
    else
      return Domination::NonDominate
    end
  end
end


puts Skyline::Cr.dominate? [1, 2, 3], [2, 3, 4]
puts Skyline::Cr.dominate? [2, 3, 4], [1, 2, 3]
puts Skyline::Cr.dominate? [1, 2, 3], [2, 3, 1]
puts Skyline::Cr.dominate? [2, 2, 3], [2, 3, 4]