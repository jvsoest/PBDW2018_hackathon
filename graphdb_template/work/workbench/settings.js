{
  "users" : {
    "admin" : {
      "username" : "admin",
      "password" : "fb614164d8d58429e9d90d380b90f382d33cd0f3e3a63f90b902471739936554",
      "grantedAuthorities" : [ "ROLE_ADMIN", "ROLE_USER", "ROLE_REAL_USER", "ROLE_REPO_ADMIN" ],
      "appSettings" : {
        "DEFAULT_INFERENCE" : true,
        "DEFAULT_SAMEAS" : true,
        "EXECUTE_COUNT" : true
      },
      "dateCreated" : 1526546890204
    }
  },
  "import.url" : {
    "roo;;https://raw.githubusercontent.com/RadiationOncologyOntology/ROO/master/owl/ROO.owl" : {
      "name" : "https://raw.githubusercontent.com/RadiationOncologyOntology/ROO/master/owl/ROO.owl",
      "status" : "DONE",
      "message" : "Imported successfully in 3 seconds and 361 milliseconds.",
      "context" : null,
      "baseURI" : null,
      "retryTimes" : null,
      "chunkSize" : null,
      "parserSettings" : {
        "preserveBNodeIds" : false,
        "failOnUnknownDataTypes" : false,
        "verifyDataTypeValues" : false,
        "normalizeDataTypeValues" : false,
        "failOnUnknownLanguageTags" : false,
        "verifyLanguageTags" : true,
        "normalizeLanguageTags" : false,
        "verifyURISyntax" : true,
        "verifyRelativeURIs" : true,
        "stopOnError" : true
      }
    }
  },
  "import.server" : { },
  "import.local" : { },
  "queries" : {
    "SPARQL Select template" : {
      "name" : "SPARQL Select template",
      "body" : "SELECT ?s ?p ?o\nWHERE {\n\t?s ?p ?o .\n} LIMIT 100"
    },
    "Clear graph" : {
      "name" : "Clear graph",
      "body" : "CLEAR GRAPH <http://example>"
    },
    "Add statements" : {
      "name" : "Add statements",
      "body" : "PREFIX dc: <http://purl.org/dc/elements/1.1/>\nINSERT DATA\n      {\n      GRAPH <http://example> {\n          <http://example/book1> dc:title \"A new book\" ;\n                                 dc:creator \"A.N.Other\" .\n          }\n      }"
    },
    "Remove statements" : {
      "name" : "Remove statements",
      "body" : "PREFIX dc: <http://purl.org/dc/elements/1.1/>\nDELETE DATA\n{\nGRAPH <http://example> {\n    <http://example/book1> dc:title \"A new book\" ;\n                           dc:creator \"A.N.Other\" .\n    }\n}"
    }
  },
  "properties" : {
    "current.location" : ""
  }
}