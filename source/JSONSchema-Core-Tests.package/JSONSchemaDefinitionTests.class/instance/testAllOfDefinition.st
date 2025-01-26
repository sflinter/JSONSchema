tests
testAllOfDefinition
	| schema string |
	string := '{
	"type": "object",
	"allOf": [
		{
			"properties": { "name": { "type": "string" } }
      },
		{
			"properties": { "age": { "type": "integer" } }
		}
	] }'.
	schema := self parse: string.
	
	self assert: schema constraints isEmpty.
	self assert: schema class equals: JSONSchemaAllOf.
	self assert: schema jsonString equals: '{"type":"composed"}'
	