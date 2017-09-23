train<- read.csv("1.csv")
#Now we need to remove the serial number column from the data
train$X<- NULL
val<-read.csv("1v.csv")
#Now we need to remove the serial number column from the data
val$X<-NULL
library('MASS')
model=lm(SalePrice~.,data=train)
summary(model)
stepAIC(model,direction="both")

#Replace the model in the below code with the model which your stepwise returns

model_step<- lm(SalePrice ~ MSSubClass + LotFrontage + LotArea + OverallQual + 
                  OverallCond + MasVnrArea + BsmtUnfSF + X1stFlrSF + X2ndFlrSF + 
                  LowQualFinSF + BsmtFullBath + BedroomAbvGr + KitchenAbvGr + 
                  TotRmsAbvGrd + GarageCars + OpenPorchSF + ScreenPorch + PoolArea + 
                  YrSold + RoofStyle_encode + SaleType_encode + Exterior2nd_encode + 
                  PoolQC_encode + MiscFeature_encode + RoofMatl_encode + KitchenQual_encode + 
                  LandContour_encode + MasVnrType_encode + LotConfig_encode + 
                  BsmtExposure_encode + ExterQual_encode + Functional_encode + 
                  PavedDrive_encode + Exterior1st_encode + Alley_encode + BsmtQual_encode + 
                  CentralAir_encode + Neighborhood_encode + Street_encode, data=train)
summary(model_step)


model_step_val<- lm(SalePrice ~MSSubClass + LotFrontage + LotArea + OverallQual + 
                      OverallCond + MasVnrArea + BsmtUnfSF + X1stFlrSF + X2ndFlrSF + 
                      LowQualFinSF + BsmtFullBath + BedroomAbvGr + KitchenAbvGr + 
                      TotRmsAbvGrd + GarageCars + OpenPorchSF + ScreenPorch + PoolArea + 
                      YrSold + RoofStyle_encode + SaleType_encode + Exterior2nd_encode + 
                      PoolQC_encode + MiscFeature_encode + RoofMatl_encode + KitchenQual_encode + 
                      LandContour_encode + MasVnrType_encode + LotConfig_encode + 
                      BsmtExposure_encode + ExterQual_encode + Functional_encode + 
                      PavedDrive_encode + Exterior1st_encode + Alley_encode + BsmtQual_encode + 
                      CentralAir_encode + Neighborhood_encode + Street_encode, data=val)
summary(model_step_val)

##################################################################
model_aaa_train<- lm(SalePrice ~ MSSubClass + LotFrontage + OverallQual + OverallCond + 
                 MasVnrArea  + X1stFlrSF + X2ndFlrSF + 
                 TotRmsAbvGrd + Fireplaces + 
                 GarageArea + ScreenPorch + 
                 SaleType_encode + LotConfig_encode +  Condition1_encode + PoolQC_encode +  BsmtQual_encode + Neighborhood_encode + 
                 KitchenQual_encode + BsmtExposure_encode, data=train)
summary(model_aaa_train)

model_aaa<- lm(SalePrice ~ MSSubClass + LotFrontage + OverallQual + OverallCond + 
                 MasVnrArea  + X1stFlrSF + X2ndFlrSF + 
                 TotRmsAbvGrd + Fireplaces + 
                 GarageArea + ScreenPorch + 
                 SaleType_encode + LotConfig_encode +  Condition1_encode + PoolQC_encode +  BsmtQual_encode + Neighborhood_encode + 
                KitchenQual_encode + BsmtExposure_encode, data=val)
summary(model_aaa)
*/