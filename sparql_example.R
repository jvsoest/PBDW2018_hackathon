install.packages(c("SPARQL"))
library(SPARQL)

query = 'PREFIX ncit:<http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#>
PREFIX roo: <http://www.cancerdata.org/roo/>
  PREFIX ro: <http://www.radiomics.org/RO/>
  PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
SELECT ?patient ?age ?sex ?cT ?cN ?tumorVolumeMM ?survival 
WHERE { 
  ?patient a ncit:C16960 ;
  roo:P100008 ?diseaseObj ;
  roo:P100311 ?survivalObj ;
  roo:P100018 ?sexObj ;
  roo:P100000 ?ageObj.
  
  OPTIONAL {
    ?patient roo:100284 ?struct.
    ?struct ro:0310 ?imageVolume.
    ?imageVolume ro:0298 ?imageSpace.
    ?imageSpace rdf:type roo:100346.
    ?imageSpace ro:0296 ?featureVolume.
    ?featureVolume rdf:type ro:1006.
    ?featureVolume ro:010198 [ rdf:type <http://www.radiomics.org/RO/CubicMillimeter> ].
    ?featureVolume ro:010191 ?tumorVolumeMM.
  }
  
  
  ?ageObj roo:P100042 ?age.    
  
  
  ?survivalObj a ?survival.
  ?survival rdfs:subClassOf roo:C100014.
  FILTER(?survival!=roo:C100014 && !ISBLANK(?survival)).
  VALUES (?survival ?survivalNumeric) {
    (roo:C000000 "0"^^xsd:int )
    (roo:C000001 "1"^^xsd:int )
  }
  
  
  { ?sexObj rdf:type ?sex.
    ?sex rdfs:subClassOf ncit:C28421.
    #FILTER(?sex!=ncit:C28421 && !ISBLANK(?sex)).
    VALUES (?sex ?sexNumeric) {
      (ncit:C20197 "1"^^xsd:int )
      (ncit:C16576 "0"^^xsd:int )
    } }
  
  
  
  ?diseaseObj 	roo:P100025 ?cTObj ;
  roo:P100025 ?cNObj.
  
  
  ?cTObj a ncit:C48885 ; 
  a ?cT.
  ?cT rdfs:subClassOf ncit:C48885.
  FILTER(?cT!=ncit:C48885 && !ISBLANK(?cT)).
  VALUES (?cT ?cTNumeric) {
    (ncit:C48720 "1"^^xsd:int )
    (ncit:C48724 "2"^^xsd:int )
    (ncit:C48728 "3"^^xsd:int )
    (ncit:C48732 "4"^^xsd:int )
  }
  
  
  ?cNObj 	a ncit:C48884 ;
  a ?cN.
  ?cN rdfs:subClassOf ncit:C48884.
  FILTER(?cN!=ncit:C48884 && !ISBLANK(?cN)).
  VALUES (?cN ?cNNumeric) {
    (ncit:C48705 "0"^^xsd:int )
    (ncit:C48706 "1"^^xsd:int )
    (ncit:C48786 "2"^^xsd:int )
    (ncit:C48714 "3"^^xsd:int )
  }
  
}'

myData <- SPARQL("http://localhost:7200/repositories/data", query)$results