import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class SklearnScreen extends StatelessWidget {
  const SklearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/sklearn.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Sklearn'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          // 04 Sklearn Preprocessing
          MyListTile(
            title: "Model Selection KFold",
            onTap: () async {
              String text = await read("sklearn/kfold.py");
              Get.to(() => ReadCodeFromFile("Model Selection KFold", text));
            },
          ),
          MyListTile(
            title: "Model Selection LeaveOneOut",
            onTap: () async {
              String text = await read("sklearn/leaveoneout.py");
              Get.to(() => ReadCodeFromFile("Model Selection LeaveOneOut", text));
            },
          ),
          MyListTile(
            title: "Model Selection LeavePOut",
            onTap: () async {
              String text = await read("sklearn/leavepout.py");
              Get.to(() => ReadCodeFromFile("Model Selection LeavePOut", text));
            },
          ),
          MyListTile(
            title: "Model Selection RepeatedKFold",
            onTap: () async {
              String text = await read("sklearn/repeatedkfold.py");
              Get.to(() => ReadCodeFromFile("Model Selection RepeatedKFold", text));
            },
          ),
          MyListTile(
            title: "Model Selection RepeatedStratifiedKFold",
            onTap: () async {
              String text = await read("sklearn/repeatedstratifiedkfold.py");
              Get.to(() => ReadCodeFromFile("Model Selection RepeatedStratifiedKFold", text));
            },
          ),
          MyListTile(
            title: "Model Selection ShuffleSplit",
            onTap: () async {
              String text = await read("sklearn/shufflesplit.py");
              Get.to(() => ReadCodeFromFile("Model Selection ShuffleSplit", text));
            },
          ),
          MyListTile(
            title: "Model Selection StratifiedKFold",
            onTap: () async {
              String text = await read("sklearn/stratifiedkfold.py");
              Get.to(() => ReadCodeFromFile("Model Selection StratifiedKFold", text));
            },
          ),
          MyListTile(
            title: "Model Selection StratifiedShuffleSplit",
            onTap: () async {
              String text = await read("sklearn/stratifiedshuffleSplit.py");
              Get.to(() => ReadCodeFromFile("Model Selection StratifiedShuffleSplit", text));
            },
          ),
          MyListTile(
            title: "Model Selection TimeSeriesSplit",
            onTap: () async {
              String text = await read("sklearn/timeSeriessplit.py");
              Get.to(() => ReadCodeFromFile("Model Selection TimeSeriesSplit", text));
            },
          ),
          MyListTile(
            title: "Model Selection Train Test Split",
            onTap: () async {
              String text = await read("sklearn/train_test_split.py");
              Get.to(() => ReadCodeFromFile("Model Selection Train Test Split", text));
            },
          ),
          MyListTile(
            title: "Preprocessing Binarizer",
            onTap: () async {
              String text = await read("sklearn/binarizer.py");
              Get.to(() => ReadCodeFromFile("Preprocessing Binarizer", text));
            },
          ),
          MyListTile(
            title: "Preprocessing FunctionTransformer",
            onTap: () async {
              String text = await read("sklearn/functiontransformer.py");
              Get.to(() => ReadCodeFromFile("Preprocessing FunctionTransformer", text));
            },
          ),
          MyListTile(
            title: "Preprocessing LabelEncoder",
            onTap: () async {
              String text = await read("sklearn/labelencoder.py");
              Get.to(() => ReadCodeFromFile("Preprocessing LabelEncoder", text));
            },
          ),
          MyListTile(
            title: "Preprocessing MaxAbsScaler",
            onTap: () async {
              String text = await read("sklearn/maxabsscaler.py");
              Get.to(() => ReadCodeFromFile("Preprocessing MaxAbsScaler", text));
            },
          ),
          MyListTile(
            title: "Preprocessing MinMaxScaler",
            onTap: () async {
              String text = await read("sklearn/minmaxscaler.py");
              Get.to(() => ReadCodeFromFile("Preprocessing MinMaxScaler", text));
            },
          ),
          MyListTile(
            title: "Preprocessing Normalizer",
            onTap: () async {
              String text = await read("sklearn/normalizer.py");
              Get.to(() => ReadCodeFromFile("Preprocessing Normalizer", text));
            },
          ),
          MyListTile(
            title: "Preprocessing OneHotEncoder",
            onTap: () async {
              String text = await read("sklearn/onehotencoder.py");
              Get.to(() => ReadCodeFromFile("Preprocessing OneHotEncoder", text));
            },
          ),
          MyListTile(
            title: "Preprocessing PolynomialFeatures",
            onTap: () async {
              String text = await read("sklearn/polynomialfeatures.py");
              Get.to(() => ReadCodeFromFile("Preprocessing PolynomialFeatures", text));
            },
          ),
          MyListTile(
            title: "Preprocessing StandardScaler",
            onTap: () async {
              String text = await read("sklearn/standardscaler.py");
              Get.to(() => ReadCodeFromFile("Preprocessing StandardScaler", text));
            },
          ),
          // 05 Sklearn Features
          MyListTile(
            title: "Data",
            onTap: () async {
              String text = await read("sklearn/data.py");
              Get.to(() => ReadCodeFromFile("Data", text));
            },
          ),
          MyListTile(
            title: "Data Cleaning Imputer",
            onTap: () async {
              String text = await read("sklearn/datacleaninginputer.py");
              Get.to(() => ReadCodeFromFile("Data Cleaning Imputer", text));
            },
          ),
          MyListTile(
            title: "Feature Selection GenericUnivariateSelect",
            onTap: () async {
              String text = await read("sklearn/genericunivariateselect.py");
              Get.to(() => ReadCodeFromFile("Feature Selection GenericUnivariateSelect", text));
            },
          ),
          MyListTile(
            title: "Feature Selection SelectFromModel",
            onTap: () async {
              String text = await read("sklearn/selectfrommodel.py");
              Get.to(() => ReadCodeFromFile("Feature Selection SelectFromModel", text));
            },
          ),
          MyListTile(
            title: "Feature Selection SelectKBest",
            onTap: () async {
              String text = await read("sklearn/selectkbest.py");
              Get.to(() => ReadCodeFromFile("Feature Selection SelectKBest", text));
            },
          ),
          MyListTile(
            title: "Feature Selection SelectPercentile",
            onTap: () async {
              String text = await read("sklearn/selectpercentile.py");
              Get.to(() => ReadCodeFromFile("Feature Selection SelectPercentile", text));
            },
          ),
          MyListTile(title: "Version",onTap: () async {
              String text = await read("sklearn/version.py");
              Get.to(() => ReadCodeFromFile("Version", text));
            },),
          // 06 Sklearn Models
          MyListTile(
            title: "Cluster AgglomerativeClustering",
            onTap: () async {
              String text = await read("sklearn/version.py");
              Get.to(() => ReadCodeFromFile("Cluster AgglomerativeClustering", text));
            },
          ),
          MyListTile(
            title: "Cluster DBSCAN",
            onTap: () async {
              String text = await read("sklearn/dbscan.py");
              Get.to(() => ReadCodeFromFile("Cluster DBSCAN", text));
            },
          ),
          MyListTile(
            title: "Cluster KMeans",
            onTap: () async {
              String text = await read("sklearn/kmeans.py");
              Get.to(() => ReadCodeFromFile("Cluster KMeans", text));
            },
          ),
          MyListTile(
            title: "Cluster MiniBatchKMeans",
            onTap: () async {
              String text = await read("sklearn/minibatchkmeans.py");
              Get.to(() => ReadCodeFromFile("Cluster MiniBatchKMeans", text));
            },
          ),
          MyListTile(
            title: "Decomposition PCA",
            onTap: () async {
              String text = await read("sklearn/pca.py");
              Get.to(() => ReadCodeFromFile("Decomposition PCA", text));
            },
          ),
          MyListTile(
            title: "Decomposition SVD",
            onTap: () async {
              String text = await read("sklearn/svd.py");
              Get.to(() => ReadCodeFromFile("Decomposition SVD", text));
            },
          ),
          MyListTile(
            title: "Discriminant Analysis LDA",
            onTap: () async {
              String text = await read("sklearn/lda.py");
              Get.to(() => ReadCodeFromFile("Discriminant Analysis LDA", text));
            },
          ),
          MyListTile(
            title: "Discriminant Analysis QDA",
            onTap: () async {
              String text = await read("sklearn/qda.py");
              Get.to(() => ReadCodeFromFile("Discriminant Analysis QDA", text));
            },
          ),
          MyListTile(
            title: "Ensemble GradientBoostingClassifier",
            onTap: () async {
              String text = await read("sklearn/gradientboostingclassifier.py");
              Get.to(() => ReadCodeFromFile("Ensemble GradientBoostingClassifier", text));
            },
          ),
          MyListTile(
            title: "Ensemble GradientBoostingRegressor",
            onTap: () async {
              String text = await read("sklearn/gradientboostingregressor.py");
              Get.to(() => ReadCodeFromFile("Ensemble GradientBoostingRegressor", text));
            },
          ),
          MyListTile(
            title: "Ensemble RandomForestClassifier",
            onTap: () async {
              String text = await read("sklearn/randomforestclassifier.py");
              Get.to(() => ReadCodeFromFile("Ensemble RandomForestClassifier", text));
            },
          ),
          MyListTile(
            title: "Ensemble RandomForestRegressor",
            onTap: () async {
              String text = await read("sklearn/randomforestregressor.py");
              Get.to(() => ReadCodeFromFile("Ensemble RandomForestRegressor", text));
            },
          ),
          MyListTile(
            title: "Ensemble VotingClassifier",
            onTap: () async {
              String text = await read("sklearn/votingclassifier.py");
              Get.to(() => ReadCodeFromFile("Ensemble VotingClassifier", text));
            },
          ),
          MyListTile(
            title: "Externals joblib",
            onTap: () async {
              String text = await read("sklearn/joblib.py");
              Get.to(() => ReadCodeFromFile("Externals joblib", text));
            },
          ),
          MyListTile(
            title: "Feature Extraction CountVectorizer",
            onTap: () async {
              String text = await read("sklearn/countvectorizer.py");
              Get.to(() => ReadCodeFromFile("Feature Extraction CountVectorizer", text));
            },
          ),
          MyListTile(
            title: "Linear Model Lasso",
            onTap: () async {
              String text = await read("sklearn/modellasso.py");
              Get.to(() => ReadCodeFromFile("Linear Model Lasso", text));
            },
          ),
          MyListTile(
            title: "Linear Model LinearRegression",
            onTap: () async {
              String text = await read("sklearn/linearregression.py");
              Get.to(() => ReadCodeFromFile("Linear Model LinearRegression", text));
            },
          ),
          MyListTile(
            title: "Linear Model LogisticRegression",
            onTap: () async {
              String text = await read("sklearn/logisticregression.py");
              Get.to(() => ReadCodeFromFile("Linear Model LogisticRegression", text));
            },
          ),
          MyListTile(
            title: "Linear Model Ridge",
            onTap: () async {
              String text = await read("sklearn/ridge.py");
              Get.to(() => ReadCodeFromFile("Linear Model Ridge", text));
            },
          ),
          MyListTile(
            title: "Linear Model SGDClassifier",
            onTap: () async {
              String text = await read("sklearn/sgdclassifier.py");
              Get.to(() => ReadCodeFromFile("Library", text));
            },
          ),
          MyListTile(
            title: "Linear Model SGDRegressor",
            onTap: () async {
              String text = await read("sklearn/sgdregressor.py");
              Get.to(() => ReadCodeFromFile("Linear Model SGDClassifier", text));
            },
          ),
          MyListTile(
            title: "Naive Bayes BernoulliNB",
            onTap: () async {
              String text = await read("sklearn/naivenernoullinb.py");
              Get.to(() => ReadCodeFromFile("Naive Bayes BernoulliNB", text));
            },
          ),
          MyListTile(
            title: "Naive Bayes GaussianNB",
            onTap: () async {
              String text = await read("sklearn/naivegaussiannb.py");
              Get.to(() => ReadCodeFromFile("Naive Bayes GaussianNB", text));
            },
          ),
          MyListTile(
            title: "Naive Bayes MultinomialNB",
            onTap: () async {
              String text = await read("sklearn/naivemultinomialnb.py");
              Get.to(() => ReadCodeFromFile("Naive Bayes MultinomialNB", text));
            },
          ),
          MyListTile(
            title: "Neighbors KNeighborsClassifier",
            onTap: () async {
              String text = await read("sklearn/kneighborsclassifier.py");
              Get.to(() => ReadCodeFromFile("Neighbors KNeighborsClassifier", text));
            },
          ),
          MyListTile(
            title: "Neighbors KNeighborsRegressor",
            onTap: () async {
              String text = await read("sklearn/kneighborsregressor.py");
              Get.to(() => ReadCodeFromFile("Neighbors KNeighborsRegressor", text));
            },
          ),
          MyListTile(
            title: "Neighbors NearestNeighbors",
            onTap: () async {
              String text = await read("sklearn/nearestneighbors.py");
              Get.to(() => ReadCodeFromFile("Neighbors NearestNeighbors", text));
            },
          ),
          MyListTile(
            title: "Neural Network MLPClassifier",
            onTap: () async {
              String text = await read("sklearn/mlpclassifier.py");
              Get.to(() => ReadCodeFromFile("Neural Network MLPClassifier", text));
            },
          ),
          MyListTile(
            title: "Neural Network MLPRegressor",
            onTap: () async {
              String text = await read("sklearn/mlpegressor.py");
              Get.to(() => ReadCodeFromFile("Neural Network MLPRegressor", text));
            },
          ),
          MyListTile(
            title: "svm SVC",
            onTap: () async {
              String text = await read("sklearn/svc.py");
              Get.to(() => ReadCodeFromFile("svm SVC", text));
            },
          ),
          MyListTile(
            title: "svm SVR",
            onTap: () async {
              String text = await read("sklearn/svr.py");
              Get.to(() => ReadCodeFromFile("svm SVR", text));
            },
          ),
          MyListTile(
            title: "Tree DecisionTreeClassifier",
            onTap: () async {
              String text = await read("sklearn/decisiontreeclassifier.py");
              Get.to(() => ReadCodeFromFile("Tree DecisionTreeClassifier", text));
            },
          ),
          MyListTile(
            title: "Tree DecisionTreeRegressor",
            onTap: () async {
              String text = await read("sklearn/decisiontreeregressor.py");
              Get.to(() => ReadCodeFromFile("Tree DecisionTreeRegressor", text));
            },
          ),
          // 07 Sklearn Check
          MyListTile(
            title: "Metrics accuracy_score",
            onTap: () async {
              String text = await read("sklearn/accuracy_score.py");
              Get.to(() => ReadCodeFromFile("Metrics accuracy_score", text));
            },
          ),
          MyListTile(
            title: "Metrics auc",
            onTap: () async {
              String text = await read("sklearn/auc.py");
              Get.to(() => ReadCodeFromFile("Metrics auc", text));
            },
          ),
          MyListTile(
            title: "Metrics classification_report",
            onTap: () async {
              String text = await read("sklearn/classification_report.py");
              Get.to(() => ReadCodeFromFile("Metrics classification_report", text));
            },
          ),
          MyListTile(
            title: "Metrics confusion_matrix",
            onTap: () async {
              String text = await read("sklearn/confusion_matrix.py");
              Get.to(() => ReadCodeFromFile("Metrics confusion_matrix", text));
            },
          ),
          MyListTile(
            title: "Metrics f1_score",
            onTap: () async {
              String text = await read("sklearn/f1_score.py");
              Get.to(() => ReadCodeFromFile("Metrics f1_score", text));
            },
          ),
          MyListTile(
            title: "Metrics mean_absolute_error",
            onTap: () async {
              String text = await read("sklearn/mean_absolute_error.py");
              Get.to(() => ReadCodeFromFile("Metrics mean_absolute_error", text));
            },
          ),
          MyListTile(
            title: "Metrics mean_squared_error",
            onTap: () async {
              String text = await read("sklearn/mean_squared_error.py");
              Get.to(() => ReadCodeFromFile("Metrics mean_squared_error", text));
            },
          ),
          MyListTile(
            title: "Metrics median_absolute_error",
            onTap: () async {
              String text = await read("sklearn/median_absolute_error.py");
              Get.to(() => ReadCodeFromFile("Metrics median_absolute_error", text));
            },
          ),
          MyListTile(
            title: "Metrics precision_recall_curve",
            onTap: () async {
              String text = await read("sklearn/precision_recall_curve.py");
              Get.to(() => ReadCodeFromFile("Metrics precision_recall_curve", text));
            },
          ),
          MyListTile(
            title: "Metrics precision_recall_fscore_support",
            onTap: () async {
              String text = await read("sklearn/precision_recall_fscore_support.py");
              Get.to(() => ReadCodeFromFile("Metrics precision_recall_fscore_support", text));
            },
          ),
          MyListTile(
            title: "Metrics precision_score",
            onTap: () async {
              String text = await read("sklearn/statistics.py");
              Get.to(() => ReadCodeFromFile("Metrics precision_score", text));
            },
          ),
          MyListTile(
            title: "Metrics roc_auc_score",
            onTap: () async {
              String text = await read("sklearn/precision_score.py");
              Get.to(() => ReadCodeFromFile("Metrics roc_auc_score", text));
            },
          ),
          MyListTile(
            title: "Metrics roc_curve",
            onTap: () async {
              String text = await read("sklearn/roc_curve.py");
              Get.to(() => ReadCodeFromFile("Metrics roc_curve", text));
            },
          ),
          MyListTile(
            title: "Metrics zero_one_loss",
            onTap: () async {
              String text = await read("sklearn/zero_one_loss.py");
              Get.to(() => ReadCodeFromFile("Metrics zero_one_loss", text));
            },
          ),
          MyListTile(
            title: "Model Selection Cross Val Predict",
            onTap: () async {
              String text = await read("sklearn/cross_val_predict.py");
              Get.to(() => ReadCodeFromFile("Model Selection Cross Val Predict", text));
            },
          ),
          MyListTile(
            title: "Model Selection Cross Val Score",
            onTap: () async {
              String text = await read("sklearn/cross_val_score.py");
              Get.to(() => ReadCodeFromFile("Model Selection Cross Val Score", text));
            },
          ),
          MyListTile(
            title: "Model Selection Cross Validate",
            onTap: () async {
              String text = await read("sklearn/cross_validate.py");
              Get.to(() => ReadCodeFromFile("Model Selection Cross Validate", text));
            },
          ),
          MyListTile(
            title: "Model Selection GridSearchCV",
            onTap: () async {
              String text = await read("sklearn/gridsearchcv.py");
              Get.to(() => ReadCodeFromFile("Model Selection GridSearchCV", text));
            },
          ),
          MyListTile(
            title: "Model Selection RandomizedSearchCV",
            onTap: () async {
              String text = await read("sklearn/randomizedsearchcv.py");
              Get.to(() => ReadCodeFromFile("Model Selection RandomizedSearchCV", text));
            },
          ),
          MyListTile(
            title: "Pipeline",
            onTap: () async {
              String text = await read("sklearn/pipeline.py");
              Get.to(() => ReadCodeFromFile("Pipeline", text));
            },
          ),
        ],
      ),
    );
  }
}
