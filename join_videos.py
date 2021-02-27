"""
This script runs MP4Box to join all the videos in "input" folder and
create a new single video called joined_video.mp4 in "output" folder.
"""

import os
from pathlib import Path
import subprocess

paths = sorted(Path('/input').iterdir(), key=os.path.getctime)

params = [f"-cat '{os.path.join('/input', p.name)}'" for p in paths]

cmd = f"MP4Box {' '.join(params)} -new '/output/joined_video.mp4'"

subprocess.check_output(cmd,shell=True, universal_newlines=True)
