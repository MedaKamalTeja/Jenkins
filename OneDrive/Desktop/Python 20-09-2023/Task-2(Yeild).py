import random
import string

# Function to generate a random username
def generate_username(length=8):
    characters = string.ascii_letters + string.digits
    username = ''.join(random.choice(characters) for _ in range(length))
    return username

# Function to load existing usernames from a file
def load_usernames_from_file(filename):
    try:
        with open(filename, 'r') as file:
            existing_usernames = set(line.strip() for line in file)
    except FileNotFoundError:
        existing_usernames = set()
    return existing_usernames

# Function to save new unique usernames to a text file
def save_unique_usernames_to_file(filename, usernames):
    existing_usernames = load_usernames_from_file(filename)

    new_usernames = [username for username in usernames if username not in existing_usernames]      # if user names are not in existing usernames.

    if new_usernames:
        with open(filename, 'a') as file:
            for username in new_usernames:
                file.write(username + '\n')

# Function to generate unique usernames
def generate_unique_usernames(length=8, count=10):
    while count > 0:
        username = generate_username(length)
        yield username
        count -= 1

# Usage example
file_name = "unique_usernames.txt"

# Generate and save 10 new unique usernames to the same file
usernames_to_save = generate_unique_usernames(count=10)
save_unique_usernames_to_file(file_name, usernames_to_save)
print(f"New unique usernames saved to {file_name}")
