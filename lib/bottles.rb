class Bottles
  def verses(from, to)
    from.downto(to).map {|n| verse(n) }.join('\n ')
  end

  def verse(n)
    "#{n} bottles"
  end
end
