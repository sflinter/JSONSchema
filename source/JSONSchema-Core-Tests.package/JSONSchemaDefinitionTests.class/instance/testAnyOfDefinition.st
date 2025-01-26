tests
testAnyOfDefinition
	| schema string |
	string := '{
	"type": "object",
	"anyOf": [
		{
			"properties": { "name": { "type": "string" } }
      },
		{
			"properties": { "age": { "type": "integer" } }
		}
	] }'.
	schema := self parse: string.
	
	self assert: schema constraints isEmpty.
	self assert: schema class equals: JSONSchemaAnyObject.
	self assert: schema jsonString equals: '{"type":"any"}'
	