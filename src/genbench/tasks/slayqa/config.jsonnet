{
    name: 'slayqa',

    // @TODO: Add a description of the task
    description: 'SlayQA aims to measure generalisation in social reasoning where agents are referred to with gender-neutral and/or neo-pronouns.',

    // @TODO: Add a list of keywords that describe the task
    keywords: [
        'social reasoning',
        'neo-pronouns',
	'inclusivity',
	'fairness',
    ],

    authors: [
        'Bastian Bunzeck',
        
    ],

    data_source: {
        type: 'hf',
        hf_id: 'bbunzeck/slayqa',
	git_commit_sha: '63cc322aa7a18e288f95e165cef06850c1b064dc',
    },

    has_validation_set: false,
    has_train_set: false,

    task_type: 'multiple_choice',


    evaluation_metrics: [
        {
            hf_id: 'accuracy',
            best_score: 1.0,
            git_commit_sha: '34d6add55811828baef83e0d7c6826e2193f7b6a',
        },
    ],

    preparation_strategies: {
        // A recipe for preparing the model to perform the task by configuring its prompt.
        // This recipe is suitable for generative LMs such as GPT-3, OPT, T5, etc.
        // We provide a few options for configuring the prompt. But, the task creator can
        // also provide a custom prompt preparation in the task's Python class.
        prompt_based_testing: {
            prompt_builder: {
                instruction_zero_shot: '',
                instruction_few_shot: '',
                input_prefix: '',
                output_prefix: '',
            }
        },
    },
}