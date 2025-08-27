import json
import sys

# File paths (modify these if needed)
file1_path = "/home/yang/share_repo/representations/all_transformations/cruxeval.jsonl"  # First JSONL file
file2_path = "data/new_cruxeval_200.jsonl"  # Second JSONL file
output_path = "updated_file2.jsonl"  # Output JSONL file

# Load file 1 into a dictionary mapping "instance" to "transformation"
file1_data = {}
with open(file1_path, "r") as f1:
    for line in f1:
        data = json.loads(line)
        file1_data[data["instance"]] = data["transformation"]

# Read file 2, update matching entries, and write to a new file
with open(file2_path, "r") as f2, open(output_path, "w") as out_file:
    for line in f2:
        data = json.loads(line)
        instance_id = data["id"]  # Matching key in file2

        # If a match exists in file1, update the "code" field
        if instance_id in file1_data:
            data["code"] = file1_data[instance_id]

        # Write the modified data to the new JSONL file
        out_file.write(json.dumps(data) + "\n")

print(f"Updated file saved as {output_path}")
