result = ''
loop do
  puts 'Selecione a operação matematica:'
  puts 'Escreva 1 para SOMA'
  puts 'Escreva 2 para SUBTRAÇÃO'
  puts 'Escreva 3 para MULTIPLICAÇÃO'
  puts 'Escreva 4 para DIVISÃO'
  puts 'Ou escreva 0 para SAIR'

  operation = gets.chomp.to_i

  if operation >= 1 && operation <= 4
    puts "-------------------------------------"
    print 'Escreva o 1º número: '
    firstNumber = gets.chomp.to_f
    print 'Escreva o 2º número: '
    secondNumber = gets.chomp.to_f
  end

  case operation
  when 1
    addition = firstNumber + secondNumber
    addition = format("%.2f", addition)
    result = "#{firstNumber} + #{secondNumber} = #{addition}"
  when 2
    subtraction = firstNumber - secondNumber
    subtraction = format("%.2f", subtraction)
    result = "#{firstNumber} - #{secondNumber} = #{subtraction}"
  when 3
    multiplication = firstNumber * secondNumber
    multiplication = format("%.2f", multiplication)
    result = "#{firstNumber} X #{secondNumber} = #{multiplication}"
  when 4
    division = firstNumber / secondNumber
    division = format("%.2f", division)
    result = "#{firstNumber} ÷ #{secondNumber} = #{division}"
  when 0
    puts "-------------------------------------------------------"
    puts "Você saiu da calculadora. Obrigado por usar e até mais."
    puts "-------------------------------------------------------"
    break
  else
    result = "Operação inválida. Digite novamente."
  end
  puts "------------------------------------"
  puts result
  puts "------------------------------------"
end