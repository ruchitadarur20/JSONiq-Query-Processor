jsoniq version "3.0";
import module namespace file = "http://expath.org/ns/file";
import module namespace math = "http://www.w3.org/2005/xpath-functions/math";
import module namespace r = "http://zorba.io/modules/random";
declare namespace ann = "http://zorba.io/annotations";
import module namespace sctx = "http://zorba.io/modules/sctx";
import module namespace fetch = "http://zorba.io/modules/fetch";
import module namespace ha = "ha1lib.jq";
(: Remove the problematic import :)
(: import module namespace dgal = "http://dgms.io/modules/analytics"; :)
(: import module namespace coll = "http://repository.vsnet.gmu.edu/config/collection.jq"; :)

let $univDB := fetch:content("testDBs/sampleUnivDB.json")
let $parsedDB := jn:parse-json($univDB)
return ha:ha1($parsedDB)