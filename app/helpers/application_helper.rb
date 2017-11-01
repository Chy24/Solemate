module ApplicationHelper

  def emoji(message)
    message.gsub(':smiley:', '😃').gsub(':hearteyes:', '😍').gsub(':kissyface:', '😘').gsub(':hearteyes:', '😍').gsub(':nerd:', '🤓').gsub(':winking:', '😉').gsub(':dog:', '🐶').gsub(':monkey:', '🐵').gsub(':sushi:', '🍣').gsub(':watermelon:', '🍉').gsub(':peach:', '🍑').gsub(':fire:', '🔥').gsub(':peace:', '✌️').gsub(':thumbsup:', '👍')
   end

end
