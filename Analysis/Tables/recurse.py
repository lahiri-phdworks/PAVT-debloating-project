import os
import json
import xlsxwriter
import random
rootdir = "."

workbook = xlsxwriter.Workbook('compare_data_sheet.xlsx')


def read_lines_chunk(fileptr, size, artifactname, strings=""):
    result = {}
    result[f"{artifactname}"] = artifactname
    for _ in range(size):
        line = fileptr.readline()
        if "analysis" not in line and "Number" in line:
            key = line.strip().split("of")[1].strip()
            value = line.strip().split("of")[0].strip().split()[0]
            result[key] = value
    return result


before_data_arr = []
after_data_arr = []
full_data = {}
for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        readfiles = os.path.join(subdir, file)
        dataset = {}
        with open(readfiles, "r") as fileptr:
            parameter = readfiles.split(".")
            after_data = {}
            before_data = {}
            artifactname = ""
            objectname = f"{parameter[2]}_{artifactname}"
            for lines in fileptr:
                if "before specialization" in lines and lines[0] == "S":
                    artifactname = lines.strip().split(" ")[2]
                    before_data = read_lines_chunk(
                        fileptr, 18, artifactname, strings="after")
                    dataset[f"before_{artifactname}_{parameter[2]}"] = before_data
                    temp = {}
                    temp["type"] = "before"
                    temp[f"tool_name"] = artifactname
                    temp[f"tool_run"] = parameter[2]
                    temp[artifactname] = {}
                    temp[artifactname][parameter[2]] = before_data
                    before_data_arr.append(temp)
                if "after specialization" in lines and lines[0] == "S":
                    artifactname = lines.strip().split(" ")[2]
                    after_data = read_lines_chunk(
                        fileptr, 18, artifactname, strings="before")
                    dataset[f"after_{artifactname}:{parameter[2]}"] = after_data
                    temp = {}
                    temp["type"] = "after"
                    temp[f"tool_name"] = artifactname
                    temp[f"tool_run"] = parameter[2]
                    temp[artifactname] = {}
                    temp[artifactname][parameter[2]] = after_data
                    after_data_arr.append(temp)

for elem1 in before_data_arr:
    tool_name = elem1["tool_name"]
    final_set = {}
    dataset = {}
    run = elem1["tool_run"]
    dataset[elem1["type"]] = elem1[tool_name][run]
    for elems in after_data_arr:
        if elems["tool_name"] == tool_name:
            dataset[elems["tool_run"]] = elems[tool_name][elems["tool_run"]]
    with open(f"data_{tool_name}.json", "w") as f:
        json.dump(dataset, f, indent=4)
