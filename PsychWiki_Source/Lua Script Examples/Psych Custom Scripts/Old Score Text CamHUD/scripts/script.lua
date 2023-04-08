function onCreatePost()
     setTextString('scoreTxt', 'Score: 0 | Misses: 0 | Accuracy: ?')
end

local scorePattern1 = '%d+%p+%d+%%'  -- Checks the accuracy is a float | '%d+%p+%d+%%' > '99.45%'
local scorePattern2 = '%d+%%'        -- Checks the accuracy is a int   | '%d+%%' > '100%'
function onUpdateScore(miss)
     local scoreTxt = getTextString('scoreTxt')
     local scoreTxtDisplay1 = 'Score: '..getScore()..' | Misses: '..miss..' | Accuracy: '
     local scoreTxtDisplay2 = (scoreTxt:match(scorePattern1) or scoreTxt:match(scorePattern2))
     setTextString('scoreTxt', scoreTxtDisplay1..scoreTxtDisplay2..' ['..ratingFC..']')
end