import json
import os
import sys

def read_json(json_file):
    if not os.path.exists(json_file):
        raise FileNotFoundError(f"The file {json_file} does not exist.")
    with open(json_file, 'r') as file:
        data = json.load(file)
    return data

def compare(data1, data2, item):
    compare = {
        "True_True": [],
        "True_False": [],
        "False_False": [],
        "False_True": [],
    }
    # for key in data1:
    #     print(key)
    # for key in data2:
    #     print(key)
    # exit(0)
    # print("before", data1["pass_at_1"])
    # print("after", data2["pass_at_1"])
    # # exit(0)
    for ID in data1["raw_scored_generations"]:
        compare[f"{data1['raw_scored_generations'][ID][0]}_{data2['raw_scored_generations'][ID][0]}"].append(ID)

    # for key in compare:
    #     print(f"{key}: {len(compare[key])}", end=' ')
    print(f"'{item}': {{'True_True': {len(compare['True_True'])}, 'True_False': {len(compare['True_False'])}}},")
    print(compare['False_True'])
    exit(0)
    # for key in compare:
    #     print(key, len(compare[key]))
    return compare['True_True'], compare['True_False']

if __name__ == "__main__":
    # args = sys.argv[1:]
    # before_json = args[0]
    # after_json = args[1]
    afters = [
"final_after_small_models/inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_input/shard_5.json",
"final_after_small_models/inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_output/shard_5.json",
"final_after_small_models/inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_input/shard_0.json",
"final_after_small_models/inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_output/shard_0.json",
"final_after_small_models/inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_input/shard_3.json",
"final_after_small_models/inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_output/shard_3.json",
"final_after_small_models/inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_input/shard_1.json",
"final_after_small_models/inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_output/shard_1.json",
"final_after_small_models/inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2.json",
"final_after_small_models/inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_output/shard_2.json",
"final_after_small_models/inference/model_generations_raw/semcoder/semcoder_temp0.01_input/shard_6.json",
"final_after_small_models/inference/model_generations_raw/semcoder/semcoder_temp0.01_output/shard_6.json",
"final_after_small_models/inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_input/shard_4.json",
"final_after_small_models/inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_output/shard_4.json",

"evaluation/model_generations_after/gpt-4o+cot_temp0.0_input/generations.json",
"evaluation/model_generations_after/gpt-4o+cot_temp0.0_output/generations.json",
"evaluation/new_after_cot_big/inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_input/shard_1.json",
"evaluation/new_after_cot_big/inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_output/shard_1.json",
"evaluation/new_after_cot_big/inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_input/shard_2.json",
"evaluation/new_after_cot_big/inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_output/shard_2.json",
"evaluation/new_after_cot_big/inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_input/shard_0.json",
"evaluation/new_after_cot_big/inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_output/shard_0.json",
    ]


    befores = [
"evaluation/backup_inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_input/shard_4.json",
"evaluation/backup_inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_output/shard_4.json",
"evaluation/backup_inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_input/shard_5.json",
"evaluation/backup_inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_output/shard_5.json",
"evaluation/backup_inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_input/shard_3.json",
"evaluation/backup_inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_output/shard_3.json",
"evaluation/backup_inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_input/shard_0.json",
"evaluation/backup_inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_output/shard_0.json",
"evaluation/backup_inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_input/shard_1.json",
"evaluation/backup_inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_output/shard_1.json",
"evaluation/backup_inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2.json",
"evaluation/backup_inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_output/shard_2.json",
"evaluation/backup_inference/model_generations_raw/semcoder/semcoder_temp0.01_input/shard_6.json",
"evaluation/backup_inference/model_generations_raw/semcoder/semcoder_temp0.01_output/shard_6.json",        

"evaluation/gpt4_model_generations_before/gpt-4o+cot_temp0.0_output/generations.json",
"evaluation/before_model_generations/model_generations/gpt-4o+cot_temp0.0_input/generations.json",
"evaluation/before_cot_big_models/inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_input/shard_1.json",
"evaluation/before_cot_big_models/inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_output/shard_1.json",
"evaluation/before_cot_big_models/inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_input/shard_2.json",
"evaluation/before_cot_big_models/inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_output/shard_2.json",
"evaluation/before_cot_big_models/inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_input/shard_0.json",
"evaluation/before_cot_big_models/inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_output/shard_0.json",
    ]
    
    # before_json = "/home/yang/cruxeval/evaluation/evaluation/before_scores/inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2.json"
    # after_json = "/home/yang/cruxeval/evaluation/inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2.json"
    
    pairs = {}
    for after_json in afters:
        model_type = after_json.split("/")[-2]
        # print(model_type)
        if model_type not in pairs:
            pairs[model_type] = {
                "after": after_json,
                "before": None,
            }
    for before_json in befores:
        model_type = before_json.split("/")[-2]
        # print(model_type)
        if model_type not in pairs:
            # print(model_type)
            pairs[model_type] = {
                "after": None,
                "before": before_json,
            }
        else:
            pairs[model_type]["before"] = before_json
            
    filename = 'data/cruxeval_200.jsonl'
    original = []

    with open(filename, 'r') as file:
        for line in file:
            json_data = json.loads(line)
            original.append(json_data)
            
    model_true_false = {}
            
    for item in pairs:
        if "output" in item:
            continue
        # (pairs[item]["before"], pairs[item]["after"])
        
        before_json = pairs[item]["before"]
        after_json = pairs[item]["after"]
        before_data = read_json(before_json)
        after_data = read_json(after_json)
        true_true_idx, true_false_idx = compare(before_data, after_data, item)
        true_true = []
        true_false = []
        for p in true_true_idx:
            true_true.append(original[int(p)]["id"])
        for p in true_false_idx:
            true_false.append(original[int(p)]["id"])
        # exit(0)
        
        if item not in model_true_false:
            model_true_false[item] = {
                "true_true": true_true,
                "true_false": true_false
            }
            
    import json
    filename = 'true_false_cruxeval_id_input.json'

    # with open(filename, 'w') as f:
    #     json.dump(model_true_false, f)
    