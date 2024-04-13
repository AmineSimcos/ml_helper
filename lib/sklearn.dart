import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

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
        children: const [
          // 04 Sklearn Preprocessing
          MyListTile(title: "Model Selection KFold"),
          MyListTile(title: "Model Selection LeaveOneOut"),
          MyListTile(title: "Model Selection LeavePOut"),
          MyListTile(title: "Model Selection RepeatedKFold"),
          MyListTile(title: "Model Selection RepeatedStratifiedKFold"),
          MyListTile(title: "Model Selection ShuffleSplit"),
          MyListTile(title: "Model Selection StratifiedKFold"),
          MyListTile(title: "Model Selection StratifiedShuffleSplit"),
          MyListTile(title: "Model Selection TimeSeriesSplit"),
          MyListTile(title: "Model Selection Train Test Split"),
          MyListTile(title: "Preprocessing Binarizer"),
          MyListTile(title: "Preprocessing FunctionTransformer"),
          MyListTile(title: "Preprocessing LabelEncoder"),
          MyListTile(title: "Preprocessing MaxAbsScaler"),
          MyListTile(title: "Preprocessing MinMaxScaler"),
          MyListTile(title: "Preprocessing Normalizer"),
          MyListTile(title: "Preprocessing OneHotEncoder"),
          MyListTile(title: "Preprocessing PolynomialFeatures"),
          MyListTile(title: "Preprocessing StandardScaler"),
          // 05 Sklearn Features
          MyListTile(title: "Data"),
          MyListTile(title: "Data Cleaning Imputer"),
          MyListTile(title: "Feature Selection GenericUnivariateSelect"),
          MyListTile(title: "Feature Selection SelectFromModel"),
          MyListTile(title: "Feature Selection SelectKBest"),
          MyListTile(title: "Feature Selection SelectPercentile"),
          MyListTile(title: "Version"),
          // 06 Sklearn Models
          MyListTile(title: "Cluster AgglomerativeClustering"),
          MyListTile(title: "Cluster DBSCAN"),
          MyListTile(title: "Cluster KMeans"),
          MyListTile(title: "Cluster MiniBatchKMeans"),
          MyListTile(title: "Decomposition PCA"),
          MyListTile(title: "Decomposition SVD"),
          MyListTile(title: "Discriminant Analysis LDA"),
          MyListTile(title: "Discriminant Analysis QDA"),
          MyListTile(title: "Ensemble GradientBoostingClassifier"),
          MyListTile(title: "Ensemble GradientBoostingRegressor"),
          MyListTile(title: "Ensemble RandomForestClassifier"),
          MyListTile(title: "Ensemble RandomForestRegressor"),
          MyListTile(title: "Ensemble VotingClassifier"),
          MyListTile(title: "Externals joblib"),
          MyListTile(title: "Feature Extraction CountVectorizer"),
          MyListTile(title: "Linear Model Lasso"),
          MyListTile(title: "Linear Model LinearRegression"),
          MyListTile(title: "Linear Model LogisticRegression"),
          MyListTile(title: "Linear Model Ridge"),
          MyListTile(title: "Linear Model SGDClassifier"),
          MyListTile(title: "Linear Model SGDRegressor"),
          MyListTile(title: "Naive Bayes BernoulliNB"),
          MyListTile(title: "Naive Bayes GaussianNB"),
          MyListTile(title: "Naive Bayes MultinomialNB"),
          MyListTile(title: "Neighbors KNeighborsClassifier"),
          MyListTile(title: "Neighbors KNeighborsRegressor"),
          MyListTile(title: "Neighbors NearestNeighbors"),
          MyListTile(title: "Neural Network MLPClassifier"),
          MyListTile(title: "Neural Network MLPRegressor"),
          MyListTile(title: "svm SVC"),
          MyListTile(title: "svm SVR"),
          MyListTile(title: "Tree DecisionTreeClassifier"),
          MyListTile(title: "Tree DecisionTreeRegressor"),
          // 07 Sklearn Check
          MyListTile(title: "Metrics accuracy_score"),
          MyListTile(title: "Metrics auc"),
          MyListTile(title: "Metrics classification_report"),
          MyListTile(title: "Metrics confusion_matrix"),
          MyListTile(title: "Metrics f1_score"),
          MyListTile(title: "Metrics mean_absolute_error"),
          MyListTile(title: "Metrics mean_squared_error"),
          MyListTile(title: "Metrics median_absolute_error"),
          MyListTile(title: "Metrics precision_recall_curve"),
          MyListTile(title: "Metrics precision_recall_fscore_support"),
          MyListTile(title: "Metrics precision_score"),
          MyListTile(title: "Metrics roc_auc_score"),
          MyListTile(title: "Metrics roc_curve"),
          MyListTile(title: "Metrics zero_one_loss"),
          MyListTile(title: "Model Selection Cross Val Predict"),
          MyListTile(title: "Model Selection Cross Val Score"),
          MyListTile(title: "Model Selection Cross Validate"),
          MyListTile(title: "Model Selection GridSearchCV"),
          MyListTile(title: "Model Selection RandomizedSearchCV"),
          MyListTile(title: "Pipeline"),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  final void Function()? onTap;
  final String? title;
  const MyListTile({
    super.key,
    this.onTap,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: const GradientBoxBorder(
          gradient: LinearGradient(
            colors: [
              Colors.cyan,
              Colors.deepPurple,
              Colors.pink,
              Colors.redAccent,
              // Colors.amber
            ],
          ),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(title!),
        trailing: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => const RadialGradient(
            center: Alignment.topCenter,
            stops: [.5, 1],
            colors: [
              Colors.pink,
              Colors.yellow,
            ],
          ).createShader(bounds),
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
          ),
        ),
      ),
    );
  }
}
