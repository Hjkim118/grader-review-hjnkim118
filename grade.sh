CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone https://github.com/ucsd-cse15l-f22/list-methods-lab3 student-submission
echo 'Finished cloning'

if [[ ! -f "ListExamples.java" ]]
then
    echo "No file submitted"
    exit
fi

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

cp student-submission/ListExamples.java ./grading-area
javac ./grading-area/ListExamples.java TestListExamples.java

if[[$? -ne 0]]
then
    echo "Fail"
fi

# Then, add here code to compile and run, and do any post-processing of the
# tests
