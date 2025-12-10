# Step 1: Create the shell script file
cat > check_file.sh << 'EOF'
#!/bin/bash

echo -n "Enter filename to check: "
read filename

if [ -e "$filename" ]; then
    echo "✔ File '$filename' exists in the current directory."
else
    echo "✘ File '$filename' does NOT exist in the current directory."
fi

# Step 2: Give execute permission
chmod +x check_file.sh

# Step 3: Run the script
./check_file.sh
