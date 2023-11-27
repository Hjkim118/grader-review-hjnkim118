CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone https://github.com/ucsd-cse15l-f22/list-methods-lab3 student-submission
echo 'Finished cloning'

cd /Users/hojoon/Desktop/list-examples-grader/student-submission

if [[ ! -f "ListExamples.java" ]]
then
    echo "No file submitted"
    exit
fi

cd /Users/hojoon/Desktop/list-examples-grader

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

cp student-submission/ListExamples.java ./grading-area
cp /Users/hojoon/Desktop/list-examples-grader/TestListExamples.java ./grading-area

cd /Users/hojoon/Desktop/list-examples-grader/grading-area

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples

if [ $? -ne 0 ]; then
    echo "Fail"
fi

# Then, add here code to compile and run, and do any post-processing of the
# tests
