import os

def list_filenames(directories):
    all_filenames = []
    for directory in directories:
        try:
            items = os.listdir(directory)
            for item in items:
                if os.path.isfile(os.path.join(directory, item)):
                    all_filenames.append(item)
        except Exception as e:
            print(f"Error accessing {directory}: {e}")
    return all_filenames

if __name__ == "__main__":
    paths = input("Enter directory paths separated by space: ").split()
    valid_paths = [path for path in paths if os.path.isdir(path)]
    if valid_paths:
        filenames = list_filenames(valid_paths)
        print("List of file names:")
        for filename in filenames:
            print(filename)
    else:
        print("No valid directories provided!")
