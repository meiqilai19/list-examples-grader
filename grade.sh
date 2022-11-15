# Create your grading script here

set -e

rm -rf student-submission
git clone $1 student-submission

if [! -f "ListExamples.java"]; then
    echo "File does not exist";
    exit
    fi

if [-f "ListExamples.java"]; then
    echo "File does exist";
    fi

mkdir autoGrader
cp ListExamples.java autoGrader/
cp TestListExamples.java autoGrader/

cd autoGrader
cp lib/hamcrest-core-1.3.jar autoGrader
cp lib/junit-4.13.2.jar autoGrader

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples

if (!$?==0); then 
    "Error in compiling";
    set-e
