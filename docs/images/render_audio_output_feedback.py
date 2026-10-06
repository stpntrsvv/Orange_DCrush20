"""Render the SVG diagram with ImageMagick's limited SVG delegate.

This delegate drops SVG paths here, so redraw their strokes with MVG.
The SVG itself is the editable source and renders normally in browsers.
"""

from pathlib import Path
import subprocess
import xml.etree.ElementTree as ET


ROOT = Path(__file__).resolve().parent
SOURCE = ROOT / "audio_output_feedback.svg"
TARGET = ROOT / "audio_output_feedback.png"

subprocess.run(["magick", "-background", "white", str(SOURCE), str(TARGET)], check=True)

arguments = ["magick", str(TARGET)]
for element in ET.parse(SOURCE).iter():
    if element.tag.rsplit("}", 1)[-1] != "path" or not element.get("class"):
        continue
    path = element.get("d")
    if path is None or "'" in path:
        raise ValueError("Unexpected SVG path")
    arguments += [
        "-fill", "none",
        "-stroke", element.get("stroke", "#26384f"),
        "-strokewidth", element.get("stroke-width", "3"),
        "-draw", f"path '{path}'",
    ]
arguments.append(str(TARGET))
subprocess.run(arguments, check=True)
