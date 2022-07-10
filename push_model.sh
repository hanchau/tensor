# GLOBAL variables
DIR_MODELS="tensor_models_123"
DIR_MODELS_ID=""
MODEL_PATH="$1"
MODEL_GDRIVE_ID=""

if [ -z $1 ]
then 
    echo "MODEL PATH IS NOT GIVEN!!"
    echo "Syntax: $ ./push_model.sh path/to/model.pickle"
    exit 1
fi


echo "Listing the directories in Google Drive."
echo "---"
gdrive list

CHECK_IF_DIR_EXIST=$(gdrive list | grep $DIR_MODELS )
if [ -z $CHECK_IF_DIR_EXIST ]
then
    echo "Directory $DIR_MODELS doesn't exist, Creating..";
    DIR_MODELS_ID=$(gdrive mkdir $DIR_MODELS);
    DIR_MODELS_ID=$(echo $DIR_MODELS_ID  | awk '{print $2}' )
else
    DIR_MODELS_ID=$(echo $CHECK_IF_DIR_EXIST | awk '{print $1}' )
fi
echo "\n\n---"
echo "Pushing model $1 in direcotry $DIR_MODELS"

MODEL_GDRIVE_ID=$(gdrive upload -p $DIR_MODELS_ID $MODEL_PATH \
                | sed -n 2p \
                | awk '{print $2}' )

echo "\e[1;31m Model ID is [$MODEL_GDRIVE_ID]. Please copy it for future references \e[0m"

echo "---"
echo "Listing the models in $DIR_MODELS"
echo "---"
gdrive list --query " '$DIR_MODELS_ID' in parents"