
#set -x

# Change into same directory as this setup script
cd $(dirname $0)

echo "Home directory configuration"
echo "----------------------------"
cd home_dir
for file in *; do
    echo Running: ln -sf "$(pwd)/$file" "$HOME/.$file"
    ln -sf "$(pwd)/$file" "$HOME/.$file"
done
cd ..

