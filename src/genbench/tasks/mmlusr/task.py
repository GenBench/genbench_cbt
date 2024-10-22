from typing import Any, Dict

from genbench import Task


class MMLUSRTask(Task):
    def format_example(self, example: Dict[str, Any]) -> Dict[str, Any]:
        options = [example["choice1"], example["choice2"], example["choice3"], example["choice4"]]

        # If the answer is already a number (0-3)
        if isinstance(example["answer"], (int, float)):
            target = int(example["answer"])
        else:
            # If the answer is a letter (A, B, C, D)
            answer_map = {"A": 0, "B": 1, "C": 2, "D": 3}
            target = answer_map[example["answer"]]

        return {"input": example["question"], "target": target, "target_options": options}
