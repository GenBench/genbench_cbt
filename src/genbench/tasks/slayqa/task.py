from typing import Any, Dict

from genbench import Task


# @Task.register("SlayQA")
class SlayQA(Task):
    """slayqa"""

    def format_example(self, example: Dict[str, Any]) -> Dict[str, Any]:
        """Perform preprocessing/formatting on an example-level.
        Map `context`, `question` to input, 'correct' to target and answerA, answerB and answerCC to target_options.

        Args:
            example: A dictionary containing key-value pairs for an example from the SlayQA dataset.


        Returns:
            A dictionary containing key-value pairs for the formatted example.
        """
        input = f"{example['context']}  {example['question']}"
        target = int(example["correct"]) - 1
        answerA = example["answerA"]
        answerB = example["answerB"]
        answerC = example["answerC"]
        return {"input": input, "target": int(target), "target_options": [answerA, answerB, answerC]}
