Trash ()
{
  item=$1
  if [ -f "$item" ]; then
    fileName=$(basename $item)

    mv "$item" ~/.Trash/$fileName
    echo "The file has been sent to the Trash"
  else
    mv "$item" ~/.Trash
    echo "The directory has been sent to the Trash"
  fi
}