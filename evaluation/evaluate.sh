

jsons=(
# Before
# ../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_input/shard_0.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_output/shard_0.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_input/shard_3.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_output/shard_3.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_input/shard_1.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_output/shard_1.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_output/shard_2.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_input/shard_4.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_output/shard_4.json
# ../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_input/shard_0.json
# ../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_output/shard_0.json
# ../inference/model_generations_raw/semcoder/semcoder_temp0.01_input/shard_0.json
# ../inference/model_generations_raw/semcoder/semcoder_temp0.01_output/shard_0.json
# model_generations/gpt-4-turbo_temp0.0_input/generations.json
# model_generations/gpt-4-turbo_temp0.0_output/generations.json

# After
# ../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_input/shard_4.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_output/shard_4.json
# ../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_input/shard_5.json
# ../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_output/shard_5.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_input/shard_3.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_output/shard_3.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_input/shard_0.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_output/shard_0.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_input/shard_1.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_output/shard_1.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_output/shard_2.json
# ../inference/model_generations_raw/semcoder/semcoder_temp0.01_input/shard_6.json
# ../inference/model_generations_raw/semcoder/semcoder_temp0.01_output/shard_6.json
# ../model_generations/gpt-4-turbo_temp0.0_input/generations.json
# ../model_generations/gpt-4-turbo_temp0.0_output/generations.json

# ../GA1_vllm/deepseek-ai/deepseek-coder-33b-instruct+cot_temp0.0_input/generations.json
# ../GA1_vllm/deepseek-ai/deepseek-coder-33b-instruct+cot_temp0.0_output/generations.json
# ../GA1_vllm/deepseek-ai/deepseek-coder-7b-base+cot_temp0.0_input/generations.json
# ../GA1_vllm/deepseek-ai/deepseek-coder-7b-base+cot_temp0.0_output/generations.json
# ../GA1_vllm/deepseek-ai/deepseek-coder-7b-instruct+cot_temp0.0_input/generations.json
# ../GA1_vllm/deepseek-ai/deepseek-coder-7b-instruct+cot_temp0.0_output/generations.json

# ../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_input/shard_7.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_input/shard_7_raw.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_output/shard_7.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_output/shard_7_raw.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_input/shard_4.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_input/shard_4_raw.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_output/shard_4.json
# ../inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_output/shard_4_raw.json
# ../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_input/shard_8.json
# ../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_input/shard_8_raw.json
# ../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_output/shard_8.json
# ../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_output/shard_8_raw.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_input/shard_5.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_input/shard_5_raw.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_output/shard_5.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_output/shard_5_raw.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_input/shard_0.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_input/shard_0_raw.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_output/shard_0.json
# ../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_output/shard_0_raw.json
# ../inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_input/shard_6.json
# ../inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_input/shard_6_raw.json
# ../inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_output/shard_6.json
# ../inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_output/shard_6_raw.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_input/shard_3.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_input/shard_3_raw.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_output/shard_3.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_output/shard_3_raw.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_input/shard_1.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_input/shard_1_raw.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_output/shard_1.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_output/shard_1_raw.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2_raw.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_output/shard_2.json
# ../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_output/shard_2_raw.json
# ../inference/model_generations_raw/semcoder/semcoder_temp0.01_input/shard_9.json
# ../inference/model_generations_raw/semcoder/semcoder_temp0.01_input/shard_9_raw.json
# ../inference/model_generations_raw/semcoder/semcoder_temp0.01_output/shard_9.json
# ../inference/model_generations_raw/semcoder/semcoder_temp0.01_output/shard_9_raw.json

../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_input/shard_7.json
../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_input/shard_7_raw.json
../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_output/shard_7.json
../inference/model_generations_raw/WizardLM/WizardCoder-15B-V1.0_temp0.01_output/shard_7_raw.json
../inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_input/shard_4.json
../inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_input/shard_4_raw.json
../inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_output/shard_4.json
../inference/model_generations_raw/WizardLM/WizardCoder-Python-34B-V1.0_temp0.01_output/shard_4_raw.json
../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_input/shard_8.json
../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_input/shard_8_raw.json
../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_output/shard_8.json
../inference/model_generations_raw/bigcode/starcoder2-15b_temp0.01_output/shard_8_raw.json
../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_input/shard_5.json
../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_input/shard_5_raw.json
../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_output/shard_5.json
../inference/model_generations_raw/codellama/CodeLlama-13b-Instruct-hf_temp0.01_output/shard_5_raw.json
../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_input/shard_0.json
../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_input/shard_0_raw.json
../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_output/shard_0.json
../inference/model_generations_raw/codellama/CodeLlama-13b-hf_temp0.01_output/shard_0_raw.json
../inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_input/shard_6.json
../inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_input/shard_6_raw.json
../inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_output/shard_6.json
../inference/model_generations_raw/codellama/CodeLlama-34b-Instruct-hf_temp0.01_output/shard_6_raw.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_input/shard_3.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_input/shard_3_raw.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_output/shard_3.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-33b-instruct_temp0.01_output/shard_3_raw.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_input/shard_1.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_input/shard_1_raw.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_output/shard_1.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-base_temp0.01_output/shard_1_raw.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_input/shard_2_raw.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_output/shard_2.json
../inference/model_generations_raw/deepseek-ai/deepseek-coder-6.7b-instruct_temp0.01_output/shard_2_raw.json
../inference/model_generations_raw/semcoder/semcoder_temp0.01_input/shard_9.json
../inference/model_generations_raw/semcoder/semcoder_temp0.01_input/shard_9_raw.json
../inference/model_generations_raw/semcoder/semcoder_temp0.01_output/shard_9.json
../inference/model_generations_raw/semcoder/semcoder_temp0.01_output/shard_9_raw.json


)

mkdir -p scores

for file in "${jsons[@]}"; do
    if [[ "input" == *"$substring"* ]]; then
        mode=input
    else
        mode=output
    fi
    filepath="${file%.json}"
    mkdir -p scores/${filepath}
    python evaluate_generations.py --generations_path ${file}  --scored_results_path scores/${filepath}.json  --mode ${mode}
done

