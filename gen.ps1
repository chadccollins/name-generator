
$n = $args[0] + 1

for ($i = 0; $i -lt $n; $i++)
{
    # build a uri to get a random noun
    $nounUri = "http://api.wordnik.com/v4/words.json/randomWord?hasDictionaryDef=true&includePartOfSpeech=noun&maxLength=7&api_key=8ed138db325dc56264403079d360f20372ed2727d1252cd4b&minDictionaryCount=10"

    $adjUri = "http://api.wordnik.com/v4/words.json/randomWord?hasDictionaryDef=true&includePartOfSpeech=adjective&maxLength=7&api_key=8ed138db325dc56264403079d360f20372ed2727d1252cd4b&minDictionaryCount=10"


    # get the randon nounUri
    $noun = (ConvertFrom-Json(Invoke-WebRequest -Uri $nounUri -UseBasicParsing)).word 

    $adj = (ConvertFrom-Json(Invoke-WebRequest -Uri $adjUri -UseBasicParsing)).word 

    Write-Host $adj $noun
}


