# JSONiq-Query-Processor

A JSONiq-based query processor for structured data extraction and transformation. This project provides tools and libraries for efficiently querying JSON data using the JSONiq query language.

## Project Description

JSONiq-Query-Processor is a Java-based implementation of a query processor that supports the JSONiq language specification. It allows users to write concise and powerful queries to extract, transform, and manipulate JSON data structures. The project includes sample databases and example scripts to demonstrate the capabilities of JSONiq for efficient data processing.

### Key Features

- Full implementation of JSONiq query language
- Efficient processing of structured JSON data
- Support for complex data extraction patterns
- Transformation capabilities for restructuring JSON
- Sample databases for testing and learning
- Example scripts showcasing common query patterns

## Installation

### Prerequisites

- Java JDK 11 or higher
- Maven 3.6 or higher

### Setup Instructions

1. Clone the repository:
   ```
   git clone https://github.com/ruchitadarur20/JSONiq-Query-Processor.git
   cd JSONiq-Query-Processor
   ```

2. Build the project using Maven:
   ```
   mvn clean install
   ```

3. Run the tests to ensure everything is working correctly:
   ```
   mvn test
   ```

## Usage Examples

### Basic Query Execution

To execute a JSONiq query against a JSON file:

```
import org.jsoniq.processor.QueryProcessor;

public class Example {
    public static void main(String[] args) {
        QueryProcessor processor = new QueryProcessor();
        String result = processor.executeQuery("for $i in json-doc('data.json')/items return $i", "path/to/data.json");
        System.out.println(result);
    }
}
```

### Using the Provided Examples

The repository contains several example query files in the project root:

- `ha1_main.jq` - Main entry point for the homework assignment example
- `ha1_produce_answers_main.jq` - Produces answers based on sample queries
- `ha1lib.jq` - Library functions for the homework assignment
- `reportForStudent.jq` - Generates a report from query results
- `report_main.jq` - Main entry point for report generation

To run these examples:

```
java -jar jsoniq-processor.jar -q ha1_main.jq -d testDBs/db1.json
```

## Project Structure

```
JSONiq-Query-Processor/
├── src/                        # Source files
├── Rinfs740_ha1_jsoniq_template/
│   ├── ha1_main.jq             # Main query file
│   ├── ha1_produce_answers_main.jq  # Answer production queries
│   ├── ha1lib.jq               # Library functions
│   ├── out.json                # Output file
│   ├── reportForStudent.jq     # Student report generator
│   ├── report_main.jq          # Report main queries
│   └── testDBs/                # Test databases
│       ├── answers.json        # Expected answers
│       ├── correct_answers.json # Correct answer examples
│       ├── db1.json - db12.json # Sample databases
│       ├── report.json         # Report data
│       └── sampleUnivDB.json   # University database example
└── README.md                   # This file
```

## Requirements & Dependencies

- Java JDK 11+
- Maven 3.6+
- JSON-P (Java API for JSON Processing)
- JUnit 5 (for tests)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Based on the JSONiq specification: [http://www.jsoniq.org/](http://www.jsoniq.org/)
- Inspired by XQuery and other XML query languages
