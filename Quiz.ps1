# Import CSV File into an array.
$acronymes = [System.Collections.ArrayList](Import-Csv -LiteralPath 'QA.csv' -Delimiter ";")

# Store the array in another variable.
$newAcronymes = $acronymes

# Define countings
$count = 1
$correct = 0
$wrong = 0

# Start loop untill the content of the acronymes array is empty or 0
while ($acronymes.count -ne 0){

    # Pick a random item from the array
    $getAcronyme = Get-random -InputObject $newAcronymes
    
    # Store the question (or acronym) into a variable.
    $getQuestion = $getAcronyme.name
    
    # Store the answer or the spelling into a variable.
    $getAnswer = $getAcronyme.explanation
    
    # Get the index of the item stored in the array in order to delete it later.
    $getIndex = $newAcronymes.name.indexOf($getQuestion)

    #Write-Host -ForegroundColor YELLOW $getIndex
    #Write-Host -ForegroundColor YELLOW $newAcronymes

    # Print the question in the console.
    $question = Write-Host "`n$count) Spell out the acronym: $getQuestion"
    
    # Prompt user input.
    $answer = Read-Host "Answer"
    
    # If user input matches the answer increment the correct variable.
    IF ($answer -eq $getAnswer){
        Write-host "Correct!"
        $correct = $correct + 1
        
    # otherwise increment the wrong variable.
    } ELSE {
        Write-Host "Wrong! The correct spelling is: $getAnswer"
        $wrong = $wrong + 1
    }

    # Remove the item from the array with the use of the index number.
    $newAcronymes.RemoveAt($getIndex)
    
    # Increment count variable with 1
    $count = $count + 1

    #write-host -ForegroundColor YELLOW "Acronym count: "$acronymes.count
    #write-host -ForegroundColor YELLOW "count: $count"

}

# Print final results
Write-Host "Correct Answers: $correct"
Write-Host "Wrong Answers: $wrong"
