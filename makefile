
.PHONY: all FORCE

all: README.md

README.md: FORCE
	@printf "# Guessing Game\n\n" > README.md
	@printf "## Project information\n\n" >> README.md
	@printf -- "- **Make executed at:** %s\n" "$$(date '+%Y-%m-%d %H:%M:%S %Z')" >> README.md
	@printf -- "- **Lines of code in guessinggame.sh:** %s\n" "$$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md
	@printf "\nThis project asks the user to guess how many regular files are in the current directory. It gives a higher/lower hint until the correct answer is entered.\n" >> README.md

FORCE:
