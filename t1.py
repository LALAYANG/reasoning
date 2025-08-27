import json

# Input and output file paths
input_file = "data/before_cruxeval_200.jsonl"  # Modify this to your actual input file
output_file = "data/before_cruxeval_icl_200.jsonl"

# Process the JSONL file
with open(input_file, "r") as infile, open(output_file, "w") as outfile:
    for line in infile:
        data = json.loads(line)

        # Extract instance ID
        instance_id = data.get("id", "unknown_id")

        # Add comment to the beginning of "original code" and "transformation"
        data["code"] = f"#{instance_id}##ID##\n{data['code']}"

        # Write updated entry back to JSONL
        outfile.write(json.dumps(data) + "\n")

print(f"Updated file saved as {output_file}")
