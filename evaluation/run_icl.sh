#!/bin/bash

# Define directories
SCORES_DIR="ft_scores"
LOG_DIR="ft_evaluation_logs"

# Ensure the output directories exist
mkdir -p "$SCORES_DIR"
mkdir -p "$LOG_DIR"

# List of given file paths
FILES=(
# ../icl_model_generations/codellama:13b+cot_temp0.0_input/generations.json
# ../icl_model_generations/codellama:13b+cot_temp0.0_output/generations.json
# ../icl_model_generations/codellama:13b-instruct+cot_temp0.0_input/generations.json
# ../icl_model_generations/codellama:13b-instruct+cot_temp0.0_output/generations.json
# ../icl_model_generations/codellama:34b-instruct+cot_temp0.0_input/generations.json
# ../icl_model_generations/codellama:34b-instruct+cot_temp0.0_output/generations.json
# ../icl_model_generations/deepseek-coder:33b-instruct+cot_temp0.0_input/generations.json
# ../icl_model_generations/deepseek-coder:33b-instruct+cot_temp0.0_output/generations.json
# ../icl_model_generations/deepseek-coder:6.7b+cot_temp0.0_input/generations.json
# ../icl_model_generations/deepseek-coder:6.7b+cot_temp0.0_output/generations.json
# ../icl_model_generations/deepseek-coder:6.7b-instruct+cot_temp0.0_input/generations.json
# ../icl_model_generations/deepseek-coder:6.7b-instruct+cot_temp0.0_output/generations.json
# ../icl_model_generations/starcoder2:15b+cot_temp0.0_input/generations.json
# ../icl_model_generations/starcoder2:15b+cot_temp0.0_output/generations.json
# ../icl_model_generations/wizardcoder:33b+cot_temp0.0_input/generations.json
# ../icl_model_generations/wizardcoder:33b+cot_temp0.0_output/generations.json
# ../icl_model_generations/jcdickinson/wizardcoder:15b+cot_temp0.0_input/generations.json
# ../icl_model_generations/jcdickinson/wizardcoder:15b+cot_temp0.0_output/generations.json
# ../icl_model_generations_small/deepseek-coder:6.7b+cot_temp0.0_input/generations.json
# ../icl_model_generations_small/deepseek-coder:6.7b+cot_temp0.0_output/generations.json
# ../icl_model_generations_small/deepseek-coder:6.7b-instruct+cot_temp0.0_input/generations.json
# ../icl_model_generations_small/deepseek-coder:6.7b-instruct+cot_temp0.0_output/generations.json
# ../icl_model_generations_small/jcdickinson/wizardcoder:15b+cot_temp0.0_input/generations.json
# ../icl_model_generations_small/jcdickinson/wizardcoder:15b+cot_temp0.0_output/generations.json
# ../icl_model_generations_small/semcoder/semcoder_1030+cot_temp0.0_input/generations.json
# ../icl_model_generations_small/semcoder/semcoder_1030+cot_temp0.0_output/generations.json
# ../icl_model_generations_sem/semcoder/semcoder_1030+cot_temp0.0_input/generations.json
# ../icl_model_generations_sem/semcoder/semcoder_1030+cot_temp0.0_output/generations.json

# ../icl_model_generations_sem/gpt-4o+cot_temp0.0_input/generations.json
# ../icl_model_generations_sem/gpt-4o+cot_temp0.0_output/generations.json

# ../finetuned_multi/yangccccc/multi+cot_temp0.0_input/generations.json
# ../finetuned_multi/yangccccc/multi+cot_temp0.0_output/generations.json

# ../finetuned_multi3/yangccccc/deepseek-coder-multi+cot_temp0.0_input/generations.json
# ../finetuned_multi3/yangccccc/deepseek-coder-multi+cot_temp0.0_output/generations.json

# ../finetuned_reason/yangccccc/deepseek-coder-reason-new+cot_temp0.0_input/generations.json
# ../finetuned_reason/yangccccc/deepseek-coder-reason-new+cot_temp0.0_output/generations.json

# ../finetuned_reason_before/yangccccc/deepseek-coder-reason-new+cot_temp0.0_input/generations.json
# ../finetuned_reason_before/yangccccc/deepseek-coder-reason-new+cot_temp0.0_output/generations.json

# ../finetuned_reason_before/yangccccc/deepseek-coder-reason-new-50+cot_temp0.0_input/generations.json
# ../finetuned_reason_before/yangccccc/deepseek-coder-reason-new-50+cot_temp0.0_output/generations.json

# ../finetuned_reason_after/yangccccc/deepseek-coder-reason-new-50+cot_temp0.0_input/generations.json
# ../finetuned_reason_after/yangccccc/deepseek-coder-reason-new-50+cot_temp0.0_output/generations.json

../finetuned_reason_before/yangccccc/deepseek-coder-trans+cot_temp0.0_input/generations.json
../finetuned_reason_before/yangccccc/deepseek-coder-trans+cot_temp0.0_output/generations.json
)

for FILE_PATH in "${FILES[@]}"; do
    DIR_NAME=$(basename "$(dirname "$FILE_PATH")")

    if [[ "$DIR_NAME" == *_input ]]; then
        MODE="input"
        MODEL_NAME="${DIR_NAME%_input}"  # Remove _input suffix
    elif [[ "$DIR_NAME" == *_output ]]; then
        MODE="output"
        MODEL_NAME="${DIR_NAME%_output}"  # Remove _output suffix
    else
        echo "Skipping $FILE_PATH: Unrecognized format"
        continue
    fi

    # Sanitize model name for filenames
    SAFE_NAME=$(echo "$MODEL_NAME" | tr '/:' '_')

    # Define output paths
    SCORED_RESULTS_PATH="$SCORES_DIR/icl_after_${SAFE_NAME}-${MODE}.json"
    LOG_PATH="$LOG_DIR/${SAFE_NAME}_${MODE}.log"

    echo "Processing: $FILE_PATH"
    echo "Model: $MODEL_NAME"
    echo "Mode: $MODE"
    echo "Scored results: $SCORED_RESULTS_PATH"
    echo "Log file: $LOG_PATH"

    # Run evaluation script
    python3 evaluate_generations.py --generations_path "$FILE_PATH" \
        --scored_results_path "$SCORED_RESULTS_PATH" \
        --mode "$MODE" |& tee "$LOG_PATH"
done
