![caretsymbol](https://github.com/RQuinn78/caret/blob/master/caret.png)

The [Caret Package](http://topepo.github.io/caret/index.html) in R offers a complete set of functions for creating a machine learning workflow in R. Functions include ...

* Data splitting 
* Pre-processing 
* Feature Selection 
* Model Training and Tuning
* Variable Importance estimation  

*Data Splitting*  
Caret offers various ways of splitting the data including split on the outcome variable, splitting based on predictors, splitting for time series data and splitting according to groups.  

*Pre-Processing*
Pre-processing options include centring and scaling, missing values imputation, dimensionality reduction and identifying correlated predictors.

*Feature Selection*
Many models already have built in feature selection. For those that don’t features can be selected using wrapper (searches combinations of features to optimise model performance) or filter (selects features according to some criterion) methods. 

*Model Training and Tuning*
Can use those algorithms that are available in caret or use other implementations of them. You can create your own model within the caret infrastructure. Tuning models can be done using random search and cross validation with repeats. 

*Variable Importance*
Includes those that use model information e.g. varImp for random forest. And also measures that don’t e.g. area under the ROC curve.  

There is a huge amount of functionality in this package so check out the [support documentation](http://topepo.github.io/caret/index.html) for more information. See also this [sample workflow](https://github.com/RQuinn78/caret/blob/master/sample_workflow.R) 



