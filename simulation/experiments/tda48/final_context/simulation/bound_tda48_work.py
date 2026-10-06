"""Повторить сохранённые консервативные оценки окон/очереди в новой серии."""
import argparse
from pathlib import Path

R = Path(__file__).resolve().parents[1]

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('full', type=Path)
    args = parser.parse_args()
    stage = args.full.resolve()
    assert stage.is_relative_to(R / 'simulation/experiments/tda48')
    assert (stage / 'results.json').is_file()
    for name in ['bound_rate48_blocks.py', 'bound_rate48_queue.py']:
        original = R / 'simulation' / name
        source = original.read_text()
        old = "D=R/'simulation/experiments/rate48/20260927T193028Z/full'"
        assert source.count(old) == 1
        source = source.replace(old, 'D=STAGE')
        namespace = dict(__name__='tda48_bounds', __file__=str(original), STAGE=stage)
        exec(compile(source, str(original), 'exec'), namespace)
