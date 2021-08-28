class JankenGame
  def getPlayerHand
    while true
      index = ["数字を入力してください。", "0: グー", "1: チョキ", "2: パー"]
      index.each {|i| puts i}
      playerHand = gets.chomp
      if playerHand =~ /^[0-2]+$/
        return playerHand.to_i
      else
        puts "0〜2の数字を入力してください。"
      end
    end
  end
  def getEnemyHand
    enemyHand = rand(0..2)
    return enemyHand
  end
  def judgeHand
    hands = ["グー", "チョキ", "パー"]
    playerHand = getPlayerHand
    enemyHand = getEnemyHand
    if playerHand == enemyHand
      puts "あいこです。"
      return judgeHand
    elsif (playerHand == 0 && enemyHand == 1) || (playerHand == 1 && enemyHand == 2) || (playerHand == 2 && enemyHand == 0)
      return puts "相手の手は#{hands[enemyHand]}です。あなたの勝ちです。"
    else
      return puts "相手の手は#{hands[enemyHand]}です。あなたの負けです。"
    end
  end
end
newJankenGame = JankenGame.new
newJankenGame.judgeHand