#' m6A Site Prediction using Random Forest
#'
#' This function builds a random forest model and predicts m6A modification sites.
#' @param feature_data A data frame containing predictor features and response column y
#' @return A vector of predicted labels
#' @export
#' @import randomForest
m6a_predict <- function(feature_data){
  set.seed(123)
  rf_model <- randomForest(y ~ ., data = feature_data)
  pred <- predict(rf_model, feature_data)
  return(pred)
}
