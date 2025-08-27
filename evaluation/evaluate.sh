

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
../model_generations/gpt-4-turbo_temp0.0_input/generations.json
../model_generations/gpt-4-turbo_temp0.0_output/generations.json
)

mkdir -p scores

for file in "${jsons[@]}"; do
    if [[ "input" == *"$substring"* ]]; then
        mode=input
    else
        mode=output
    fi
    filepath="${file%.json}"
    mkdir -p ga_scores/${filepath}
    python evaluate_generations.py --generations_path ${file}  --scored_results_path ga_scores/${filepath}.json  --mode ${mode}
done

