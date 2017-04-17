require "./skyline-cr/*"

class SkylineException < Exception
end

enum Domination
  Dominate
  NonDominate
  BeDominated
end

class Array
  def dominate?(compare_attrs : Array)
    if size != compare_attrs.size
      raise SkylineException.new("Two Attributes size is not match.")
    end
    check_size = size
    check_flag = 0
    zip(compare_attrs).each do |attr1, attr2|
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
      return nil
    end
  end
end
