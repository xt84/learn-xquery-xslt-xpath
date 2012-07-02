(: get new document, from another :)
for $doc in doc("../data/example-data.xml")
return <numbers>{
    for $val in $doc/test/data
    return <number>{ $val/text() }</number>
}</numbers>