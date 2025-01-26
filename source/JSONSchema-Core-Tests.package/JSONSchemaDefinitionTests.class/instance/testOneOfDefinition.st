tests
testOneOfDefinition
	| schema string |
	string := '{
	"type": "object",
	"oneOf": [
		{
			"properties": { "name": { "type": "string" } }
      },
		{
			"properties": { "age": { "type": "integer" } }
		}
	] }'.
	schema := self parse: string.
	
	self assert: schema constraints isEmpty.
	self assert: schema class equals: JSONSchemaOneOf.
	self assert: schema jsonString equals: '{"type":"composed"}'
	