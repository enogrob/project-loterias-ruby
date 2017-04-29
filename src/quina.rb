class Quina
  attr_reader :value

  def initialize(n=5)
    @value = []
    (1..n).each do |q|
      loop do
        q = rand(80) + 1
        if !@value.include? q then
          @value << q
          break
        end
      end
    end
    @value.sort!
  end

  def sum
    @value.reduce(:+)
  end

  def columns
    @value.map{|q| ((q.to_f/10).abs.modulo(1).round(1) * 10).to_i}
  end
end