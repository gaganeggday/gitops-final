for dir in ./environments/*
do
  if [ -d $dir ]
  then
    kubectl apply --dry-run -k ${dir}/base/
  else
    ${dir} is not a directory
  fi
done

