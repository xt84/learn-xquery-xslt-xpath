(:
    Evalution order
    doc() - return document node
    doc()/bib/ - name test, select all <bib> nodes (only one) and set <bib> as context node
    doc()/bib/book - select all <book> elements
    doc()/bib/book[1] - filter <book> elements and get first   
:)
for $data in doc("../data/book.xml")/bib/book[1]
return $data
