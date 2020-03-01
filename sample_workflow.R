# this script shows an example workflow for building and testing a random forest model using caret
# this is a simplified example to demo the steps involved

library caret
library randomForest
set.seed (123)

# assuming the data set is contained in an object called data
# data should be split into a testing set and a training set
# here it's split 70:30 using the inTrain function

inTrain <- createDatapartition (y=Data$Class_Variable, p=0.7, list=FALSE)
Training <- data[inTrain,]
Testing <- data[-inTrain,]

# do some preprocessing for example here we centre and scale data 
# for this you use preProcessData function and pass the methods to be used as arguments to the function  
# note that the parameters used when preprocessing the test set are those calculated on the training set 

preProcessData <- preProcess (Training, method=c(“center”, “scale”))
Training_processed <- predict(preProcessData, Training[,-1])
Testing_processed <- predict (preProcessData, Testing[,-1])

# use the training set to build the model, its possible to specify various options here
# this example uses 10 fold cross validation with 10 repeats and randomly varying hyperparameters

rf_model <- train(Class_Variable~.,  method=“rf”, data=Training_processed, 
trControl=trainControl(method=“repeatedcv”, number=10, repeats=10, search=“random”), tuneLength=5)

# predict on the test data and generate a confusion matrix

rf_model_predict <- predict(rf_model, Testing_processed)
confusionMatrix (rf_model_predict,  Testing_processed$Class_Variable)

# check variable importance 

Var_imp <- varImp (rf_model, scale=F)



