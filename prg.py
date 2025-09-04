import requests

# Public GitHub repo (Torvalds Linux as example)
url = "https://api.github.com/repos/torvalds/linux/commits"

# Fetch commits
response = requests.get(url)
commits = response.json()
# print(commits[0]['commit']['author'])

for commit in commits:
    author = commit["commit"]["author"]["name"]
    message = commit["commit"]["message"]
    print(f"{author}: {message}\n")

