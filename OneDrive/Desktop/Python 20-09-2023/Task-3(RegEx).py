import re

# Define a regular expression pattern for matching email addresses
email_pattern = r'\b[A-Za-z0-9._]+@[A-Za-z]+\.[A-Za-z]{2,7}\b'

try:
    # Read the text document (replace 'input.txt' with the path to your text file)
    with open('C:/Users/Kamal Teja INT-212/OneDrive/Desktop/Python 20-09-2023/emails', 'r') as file:
        text = file.read()

    # Use the findall method to extract all email addresses that match the pattern
    email_addresses = re.findall(email_pattern, text)

    # Print the extracted email addresses
    for email in email_addresses:
        print(email)

except FileNotFoundError as e:
    print(f"Error: {e}")
