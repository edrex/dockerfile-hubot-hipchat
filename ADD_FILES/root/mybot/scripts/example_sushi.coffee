msgs = [
  "はまち",
  "中トロ",
  "えんがわ",
  "えび",
  "いか",
  "たこ",
  "いくら",
  "うに",
  "車エビ",
  "ほたて"
]

module.exports = (robot) ->
  robot.hear /sushi/i, (msg) ->
    msg.send msg.random msgs
