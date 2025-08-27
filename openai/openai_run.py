# Copyright (c) Meta Platforms, Inc. and affiliates.

import os
import json
from itertools import product

from openai_prompt import (
    batch_prompt_direct_input,
    batch_prompt_cot_input,
    batch_prompt_direct_output,
    batch_prompt_cot_output,
)

def run_openai(model, mode, cot, temperature):
    print("RUN", model, mode, cot, temperature)
    # dataset = [json.loads(l) for l in open("../data/new_cruxeval_200.jsonl", "r").readlines()] #after
    dataset = [json.loads(l) for l in open("../data/cruxeval_200_gav1.jsonl", "r").readlines()] #before
    # "../data/cruxeval_200.jsonl"
    #"../data/new_cruxeval_200.jsonl"
    #../data/before_cruxeval_icl_200.jsonl
    # "../data/after_cruxeval_icl_200.jsonl"
    
    #"../data/new_cruxeval_200.jsonl" # after-200-without-icl
    #cruxeval_200.jsonl  new_cruxeval_200.jsonl  "../data/new_cruxeval_200.jsonl"

    if mode == "input": prompts = [(data["code"], data["output"]) for data in dataset] 
    else: prompts = [(data["code"], data["input"]) for data in dataset] 
    
    if cot: 
        max_tokens = 8000
    else: 
        max_tokens = 100

    fn = {
        (True, "input"): batch_prompt_cot_input,
        (True, "output"): batch_prompt_cot_output,
        (False, "input"): batch_prompt_direct_input,
        (False, "output"): batch_prompt_direct_output,
    }[(cot, mode)]

    outputs = fn(
        prompts,
        temperature=temperature,
        n=1,
        model=model,
        max_tokens=max_tokens,
        stop=["[/ANSWER]"],
    )
    save_dir = get_save_dir(mode, model, cot, temperature)
    outputs_dict = {f"sample_{i}": [j[0] for j in o] for i, o in enumerate(outputs)}
    json.dump(outputs_dict, open(save_dir, "w"))
    return outputs

def get_save_dir(mode, model, cot, temperature):
    if cot: 
        base_dir = f"../GA1_vllm/{model}+cot_temp{temperature}_{mode}"
    else:
        base_dir = f"../GA1_vllm/{model}_temp{temperature}_{mode}"
    try: os.makedirs(base_dir)
    except: pass
    return os.path.join(base_dir, "generations.json")
        
if __name__ == "__main__":
    # models = ["codellama:13b", "wizardcoder:33b", "codellama:34b-instruct", "codellama:13b-instruct",
    #           "deepseek-coder:6.7b-instruct", "jcdickinson/wizardcoder:15b", "deepseek-coder:6.7b",
    #           "starcoder2:15b", "deepseek-coder:33b-instruct"]
    models = ["deepseek-ai/deepseek-coder-7b-base"]
    # [ 'yangccccc/deepseek-coder-trans' ]
            #   'yangccccc/deepseek-coder-reason-new-50' ]
            #   'yangccccc/deepseek-coder-reason-new']
            #   'yangccccc/deepseek-coder-multi' ]
        # 'gpt-4o']
        # 'semcoder/semcoder_1030']
    modes = [ "output"] #"input", "input",
    cots = [True]
    temperatures = [0.0]
    for model, mode, cot, temperature in product(models, modes, cots, temperatures):
        run_openai(model, mode, cot, temperature)
        # break # comment out to run the whole thing $$