# mmlusr

## Abstract
*We propose MMLU-SR, a novel dataset designed to measure the true comprehension abilities of Large Language Models (LLMs) by challenging their performance in question-answering tasks with modified terms. We reasoned that an agent that "truly" understands a concept can still evaluate it when key terms are replaced by suitably defined alternate terms, and sought to differentiate such comprehension from mere text replacement. In our study, we modified standardized test questions by replacing a key term with a dummy word along with its definition. The key term could be in the context of questions, answers, or both questions and answers. Notwithstanding the high scores achieved by recent popular LLMs on the MMLU leaderboard, we found a substantial reduction in model performance after such replacement, suggesting poor comprehension. This new benchmark provides a rigorous benchmark for testing true model comprehension, and poses a challenge to the broader scientific community.*

## Examples
*"Suppose 'Dummy' means 'ubiquitous, mostly free-living organisms often consisting of one biological cell.' Which of the following best describes the human body's defense mechanism against environmental Dummy?", Hair in the nose,"Suppose 'Queen' means 'The moist, inner lining of some organs and body cavities' Queen",Suppose 'Noise' means 'cells that form new bones and grow and heal existing bones.' Noise,Suppose 'Bard' means 'an extracellular fluid produced and secreted by salivary glands in the mouth.' Bard,B*

## Usage
*Please check our git repo: https://github.com/Wang-ML-Lab/MMLU-SR*

## Data Source
*Dataset can be retrieved from either HuggingFace or Github. HF:NiniCat/MMLU-SR.  Git: https://github.com/Wang-ML-Lab/MMLU-SR*

## Limitations and Bias
*NA*

## GenBench Eval card
*There are dev and test datasets, which dev set is for few-shot prompting and test set is the actual evaluation set.*.
