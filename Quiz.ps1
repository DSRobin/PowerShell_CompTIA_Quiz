$acronymes = [System.Collections.ArrayList](Import-Csv -LiteralPath 'QA.csv' -Delimiter ";")
$newAcronymes = $acronymes
$count = 1
$correct = 0
$wrong = 0
while ($acronymes.count -ne 0){

    
    $getAcronyme = Get-random -InputObject $newAcronymes
    $getQuestion = $getAcronyme.name
    $getAnswer = $getAcronyme.explanation
    $getIndex = $newAcronymes.name.indexOf($getQuestion)

    #Write-Host -ForegroundColor YELLOW $getIndex
    #Write-Host -ForegroundColor YELLOW $newAcronymes

    
    $question = Write-Host "`n$count) Give the explanation of acronym: $getQuestion"
    $answer = Read-Host "Answer"

    IF ($answer -eq $getAnswer){
        Write-host "Correct!"
        $correct = $correct + 1

    } ELSE {
        Write-Host "Wrong! The correct answer is: $getAnswer"
        $wrong = $wrong + 1
    }

    $newAcronymes.RemoveAt($getIndex)

    $count = $count + 1

    #write-host -ForegroundColor YELLOW "Acronym count: "$acronymes.count
    #write-host -ForegroundColor YELLOW "count: $count"

}

Write-Host "Correct Answers: $correct"
Write-Host "Wrong Answers: $wrong"
