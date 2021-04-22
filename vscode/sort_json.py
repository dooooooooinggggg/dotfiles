import sys
import json


def main(file_name):
    with open(file_name, 'r') as fd:
        json_data = json.load(fd)

    sorted_json = {}
    for i in sorted(json_data.keys()):
        sorted_json[i] = json_data[i]

    print(json.dumps(sorted_json))
    return


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("usage: python sort_json.py filename")
        exit()

    file_name = sys.argv[1]
    main(file_name)
    pass
