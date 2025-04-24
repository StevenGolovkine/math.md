import os
import json
import frontmatter

WIKI = '/Users/steven/Documents/notes/'
NOTES_DIR = os.path.join(WIKI, 'notes')
OUTPUT_FILE = os.path.join(WIKI, 'site/static/allFiles.json')

def extract_all():
    front_matter_list = []

    for filename in os.listdir(NOTES_DIR):
        if filename.endswith('.md'):
            filepath = os.path.join(NOTES_DIR, filename)
            data = extract(filepath)
            data['relPath'] = filename[:-3]  # remove ".md"
            front_matter_list.append(data)

    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        json.dump(front_matter_list, f, ensure_ascii=False, indent=2)

def extract(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        post = frontmatter.load(f)
        return post.metadata

if __name__ == '__main__':
    extract_all()
