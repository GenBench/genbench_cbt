{
    name: 'mmlusr',

    description: 'mmlusr aims to measure the true comprehension abilities of Large Language Models (LLMs) by challenging their performance in question-answering tasks with modified terms.',

    keywords: [
        'LLMs',
        'Benchmarks',
        'Dataset',
        'Reasoning'
    ],

    authors: [
        'Wentian Wang',
        'Sarthak Jain',
        'Paul Kantor',
        'Jacob Feldman',
        'Lazaros Gallos',
        'Hao Wang'
    ],

    data_source: {
        type: 'hf',
        hf_id: [
            'NiniCat/MMLU-SR',
            'answer_only_abstract_algebra' //switch to other tasks by altering to some task like 'question_and_answer_abstract_algebra'
        ],
        git_commit_sha: '505322b292ac81cc83c0942c2d2930af5ba31068'
    },

    has_validation_set: false,
    has_train_set: true,

    task_type: 'multiple_choice',

    evaluation_metrics: [
        {
            hf_id: 'accuracy',
            best_score: 1.0,
            git_commit_sha: '330abb383de68be32352dd876716f644bc71c1e5',  
        }
    ],

    preparation_strategies: {
        prompt_based_testing: {
            prompt_builder: {
                instruction_zero_shot: 'Please respond to each question with \'Answer: <letter>\' where <letter> is the correct choice. Avoid additional explanations.\n\n',
                instruction_few_shot: 'Follow the given examples and answer the question. Please respond to each question with \'Answer: <letter>\' where <letter> is the correct choice. Avoid additional explanations. \n\n',
                input_prefix: 'Q: ',
                output_prefix: '\nA: '
            }
        }
    }
}