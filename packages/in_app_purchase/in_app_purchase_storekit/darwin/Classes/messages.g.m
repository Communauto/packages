// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v16.0.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "messages.g.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}

static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@implementation SKPaymentTransactionStateMessageBox
- (instancetype)initWithValue:(SKPaymentTransactionStateMessage)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@implementation SKProductDiscountTypeMessageBox
- (instancetype)initWithValue:(SKProductDiscountTypeMessage)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@implementation SKProductDiscountPaymentModeMessageBox
- (instancetype)initWithValue:(SKProductDiscountPaymentModeMessage)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@implementation SKSubscriptionPeriodUnitMessageBox
- (instancetype)initWithValue:(SKSubscriptionPeriodUnitMessage)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@interface SKPaymentTransactionMessage ()
+ (SKPaymentTransactionMessage *)fromList:(NSArray *)list;
+ (nullable SKPaymentTransactionMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SKPaymentMessage ()
+ (SKPaymentMessage *)fromList:(NSArray *)list;
+ (nullable SKPaymentMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SKErrorMessage ()
+ (SKErrorMessage *)fromList:(NSArray *)list;
+ (nullable SKErrorMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SKPaymentDiscountMessage ()
+ (SKPaymentDiscountMessage *)fromList:(NSArray *)list;
+ (nullable SKPaymentDiscountMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SKStorefrontMessage ()
+ (SKStorefrontMessage *)fromList:(NSArray *)list;
+ (nullable SKStorefrontMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SKProductsResponseMessage ()
+ (SKProductsResponseMessage *)fromList:(NSArray *)list;
+ (nullable SKProductsResponseMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SKProductMessage ()
+ (SKProductMessage *)fromList:(NSArray *)list;
+ (nullable SKProductMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SKPriceLocaleMessage ()
+ (SKPriceLocaleMessage *)fromList:(NSArray *)list;
+ (nullable SKPriceLocaleMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SKProductDiscountMessage ()
+ (SKProductDiscountMessage *)fromList:(NSArray *)list;
+ (nullable SKProductDiscountMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface SKProductSubscriptionPeriodMessage ()
+ (SKProductSubscriptionPeriodMessage *)fromList:(NSArray *)list;
+ (nullable SKProductSubscriptionPeriodMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation SKPaymentTransactionMessage
+ (instancetype)makeWithPayment:(SKPaymentMessage *)payment
               transactionState:(SKPaymentTransactionStateMessage)transactionState
            originalTransaction:(nullable SKPaymentTransactionMessage *)originalTransaction
           transactionTimeStamp:(nullable NSNumber *)transactionTimeStamp
          transactionIdentifier:(nullable NSString *)transactionIdentifier
                          error:(nullable SKErrorMessage *)error {
  SKPaymentTransactionMessage *pigeonResult = [[SKPaymentTransactionMessage alloc] init];
  pigeonResult.payment = payment;
  pigeonResult.transactionState = transactionState;
  pigeonResult.originalTransaction = originalTransaction;
  pigeonResult.transactionTimeStamp = transactionTimeStamp;
  pigeonResult.transactionIdentifier = transactionIdentifier;
  pigeonResult.error = error;
  return pigeonResult;
}
+ (SKPaymentTransactionMessage *)fromList:(NSArray *)list {
  SKPaymentTransactionMessage *pigeonResult = [[SKPaymentTransactionMessage alloc] init];
  pigeonResult.payment = [SKPaymentMessage nullableFromList:(GetNullableObjectAtIndex(list, 0))];
  pigeonResult.transactionState = [GetNullableObjectAtIndex(list, 1) integerValue];
  pigeonResult.originalTransaction =
      [SKPaymentTransactionMessage nullableFromList:(GetNullableObjectAtIndex(list, 2))];
  pigeonResult.transactionTimeStamp = GetNullableObjectAtIndex(list, 3);
  pigeonResult.transactionIdentifier = GetNullableObjectAtIndex(list, 4);
  pigeonResult.error = [SKErrorMessage nullableFromList:(GetNullableObjectAtIndex(list, 5))];
  return pigeonResult;
}
+ (nullable SKPaymentTransactionMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKPaymentTransactionMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.payment ? [self.payment toList] : [NSNull null]),
    @(self.transactionState),
    (self.originalTransaction ? [self.originalTransaction toList] : [NSNull null]),
    self.transactionTimeStamp ?: [NSNull null],
    self.transactionIdentifier ?: [NSNull null],
    (self.error ? [self.error toList] : [NSNull null]),
  ];
}
@end

@implementation SKPaymentMessage
+ (instancetype)makeWithProductIdentifier:(NSString *)productIdentifier
                      applicationUsername:(nullable NSString *)applicationUsername
                              requestData:(nullable NSString *)requestData
                                 quantity:(NSInteger)quantity
               simulatesAskToBuyInSandbox:(BOOL)simulatesAskToBuyInSandbox
                          paymentDiscount:(nullable SKPaymentDiscountMessage *)paymentDiscount {
  SKPaymentMessage *pigeonResult = [[SKPaymentMessage alloc] init];
  pigeonResult.productIdentifier = productIdentifier;
  pigeonResult.applicationUsername = applicationUsername;
  pigeonResult.requestData = requestData;
  pigeonResult.quantity = quantity;
  pigeonResult.simulatesAskToBuyInSandbox = simulatesAskToBuyInSandbox;
  pigeonResult.paymentDiscount = paymentDiscount;
  return pigeonResult;
}
+ (SKPaymentMessage *)fromList:(NSArray *)list {
  SKPaymentMessage *pigeonResult = [[SKPaymentMessage alloc] init];
  pigeonResult.productIdentifier = GetNullableObjectAtIndex(list, 0);
  pigeonResult.applicationUsername = GetNullableObjectAtIndex(list, 1);
  pigeonResult.requestData = GetNullableObjectAtIndex(list, 2);
  pigeonResult.quantity = [GetNullableObjectAtIndex(list, 3) integerValue];
  pigeonResult.simulatesAskToBuyInSandbox = [GetNullableObjectAtIndex(list, 4) boolValue];
  pigeonResult.paymentDiscount =
      [SKPaymentDiscountMessage nullableFromList:(GetNullableObjectAtIndex(list, 5))];
  return pigeonResult;
}
+ (nullable SKPaymentMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKPaymentMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.productIdentifier ?: [NSNull null],
    self.applicationUsername ?: [NSNull null],
    self.requestData ?: [NSNull null],
    @(self.quantity),
    @(self.simulatesAskToBuyInSandbox),
    (self.paymentDiscount ? [self.paymentDiscount toList] : [NSNull null]),
  ];
}
@end

@implementation SKErrorMessage
+ (instancetype)makeWithCode:(NSInteger)code
                      domain:(NSString *)domain
                    userInfo:(nullable NSDictionary<NSString *, id> *)userInfo {
  SKErrorMessage *pigeonResult = [[SKErrorMessage alloc] init];
  pigeonResult.code = code;
  pigeonResult.domain = domain;
  pigeonResult.userInfo = userInfo;
  return pigeonResult;
}
+ (SKErrorMessage *)fromList:(NSArray *)list {
  SKErrorMessage *pigeonResult = [[SKErrorMessage alloc] init];
  pigeonResult.code = [GetNullableObjectAtIndex(list, 0) integerValue];
  pigeonResult.domain = GetNullableObjectAtIndex(list, 1);
  pigeonResult.userInfo = GetNullableObjectAtIndex(list, 2);
  return pigeonResult;
}
+ (nullable SKErrorMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKErrorMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    @(self.code),
    self.domain ?: [NSNull null],
    self.userInfo ?: [NSNull null],
  ];
}
@end

@implementation SKPaymentDiscountMessage
+ (instancetype)makeWithIdentifier:(NSString *)identifier
                     keyIdentifier:(NSString *)keyIdentifier
                             nonce:(NSString *)nonce
                         signature:(NSString *)signature
                         timestamp:(NSInteger)timestamp {
  SKPaymentDiscountMessage *pigeonResult = [[SKPaymentDiscountMessage alloc] init];
  pigeonResult.identifier = identifier;
  pigeonResult.keyIdentifier = keyIdentifier;
  pigeonResult.nonce = nonce;
  pigeonResult.signature = signature;
  pigeonResult.timestamp = timestamp;
  return pigeonResult;
}
+ (SKPaymentDiscountMessage *)fromList:(NSArray *)list {
  SKPaymentDiscountMessage *pigeonResult = [[SKPaymentDiscountMessage alloc] init];
  pigeonResult.identifier = GetNullableObjectAtIndex(list, 0);
  pigeonResult.keyIdentifier = GetNullableObjectAtIndex(list, 1);
  pigeonResult.nonce = GetNullableObjectAtIndex(list, 2);
  pigeonResult.signature = GetNullableObjectAtIndex(list, 3);
  pigeonResult.timestamp = [GetNullableObjectAtIndex(list, 4) integerValue];
  return pigeonResult;
}
+ (nullable SKPaymentDiscountMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKPaymentDiscountMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.identifier ?: [NSNull null],
    self.keyIdentifier ?: [NSNull null],
    self.nonce ?: [NSNull null],
    self.signature ?: [NSNull null],
    @(self.timestamp),
  ];
}
@end

@implementation SKStorefrontMessage
+ (instancetype)makeWithCountryCode:(NSString *)countryCode identifier:(NSString *)identifier {
  SKStorefrontMessage *pigeonResult = [[SKStorefrontMessage alloc] init];
  pigeonResult.countryCode = countryCode;
  pigeonResult.identifier = identifier;
  return pigeonResult;
}
+ (SKStorefrontMessage *)fromList:(NSArray *)list {
  SKStorefrontMessage *pigeonResult = [[SKStorefrontMessage alloc] init];
  pigeonResult.countryCode = GetNullableObjectAtIndex(list, 0);
  pigeonResult.identifier = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable SKStorefrontMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKStorefrontMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.countryCode ?: [NSNull null],
    self.identifier ?: [NSNull null],
  ];
}
@end

@implementation SKProductsResponseMessage
+ (instancetype)makeWithProducts:(nullable NSArray<SKProductMessage *> *)products
       invalidProductIdentifiers:(nullable NSArray<NSString *> *)invalidProductIdentifiers {
  SKProductsResponseMessage *pigeonResult = [[SKProductsResponseMessage alloc] init];
  pigeonResult.products = products;
  pigeonResult.invalidProductIdentifiers = invalidProductIdentifiers;
  return pigeonResult;
}
+ (SKProductsResponseMessage *)fromList:(NSArray *)list {
  SKProductsResponseMessage *pigeonResult = [[SKProductsResponseMessage alloc] init];
  pigeonResult.products = GetNullableObjectAtIndex(list, 0);
  pigeonResult.invalidProductIdentifiers = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable SKProductsResponseMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKProductsResponseMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.products ?: [NSNull null],
    self.invalidProductIdentifiers ?: [NSNull null],
  ];
}
@end

@implementation SKProductMessage
+ (instancetype)
      makeWithProductIdentifier:(NSString *)productIdentifier
                 localizedTitle:(NSString *)localizedTitle
           localizedDescription:(nullable NSString *)localizedDescription
                    priceLocale:(SKPriceLocaleMessage *)priceLocale
    subscriptionGroupIdentifier:(nullable NSString *)subscriptionGroupIdentifier
                          price:(NSString *)price
             subscriptionPeriod:(nullable SKProductSubscriptionPeriodMessage *)subscriptionPeriod
              introductoryPrice:(nullable SKProductDiscountMessage *)introductoryPrice
                      discounts:(nullable NSArray<SKProductDiscountMessage *> *)discounts {
  SKProductMessage *pigeonResult = [[SKProductMessage alloc] init];
  pigeonResult.productIdentifier = productIdentifier;
  pigeonResult.localizedTitle = localizedTitle;
  pigeonResult.localizedDescription = localizedDescription;
  pigeonResult.priceLocale = priceLocale;
  pigeonResult.subscriptionGroupIdentifier = subscriptionGroupIdentifier;
  pigeonResult.price = price;
  pigeonResult.subscriptionPeriod = subscriptionPeriod;
  pigeonResult.introductoryPrice = introductoryPrice;
  pigeonResult.discounts = discounts;
  return pigeonResult;
}
+ (SKProductMessage *)fromList:(NSArray *)list {
  SKProductMessage *pigeonResult = [[SKProductMessage alloc] init];
  pigeonResult.productIdentifier = GetNullableObjectAtIndex(list, 0);
  pigeonResult.localizedTitle = GetNullableObjectAtIndex(list, 1);
  pigeonResult.localizedDescription = GetNullableObjectAtIndex(list, 2);
  pigeonResult.priceLocale =
      [SKPriceLocaleMessage nullableFromList:(GetNullableObjectAtIndex(list, 3))];
  pigeonResult.subscriptionGroupIdentifier = GetNullableObjectAtIndex(list, 4);
  pigeonResult.price = GetNullableObjectAtIndex(list, 5);
  pigeonResult.subscriptionPeriod =
      [SKProductSubscriptionPeriodMessage nullableFromList:(GetNullableObjectAtIndex(list, 6))];
  pigeonResult.introductoryPrice =
      [SKProductDiscountMessage nullableFromList:(GetNullableObjectAtIndex(list, 7))];
  pigeonResult.discounts = GetNullableObjectAtIndex(list, 8);
  return pigeonResult;
}
+ (nullable SKProductMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKProductMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.productIdentifier ?: [NSNull null],
    self.localizedTitle ?: [NSNull null],
    self.localizedDescription ?: [NSNull null],
    (self.priceLocale ? [self.priceLocale toList] : [NSNull null]),
    self.subscriptionGroupIdentifier ?: [NSNull null],
    self.price ?: [NSNull null],
    (self.subscriptionPeriod ? [self.subscriptionPeriod toList] : [NSNull null]),
    (self.introductoryPrice ? [self.introductoryPrice toList] : [NSNull null]),
    self.discounts ?: [NSNull null],
  ];
}
@end

@implementation SKPriceLocaleMessage
+ (instancetype)makeWithCurrencySymbol:(NSString *)currencySymbol
                          currencyCode:(NSString *)currencyCode
                           countryCode:(NSString *)countryCode {
  SKPriceLocaleMessage *pigeonResult = [[SKPriceLocaleMessage alloc] init];
  pigeonResult.currencySymbol = currencySymbol;
  pigeonResult.currencyCode = currencyCode;
  pigeonResult.countryCode = countryCode;
  return pigeonResult;
}
+ (SKPriceLocaleMessage *)fromList:(NSArray *)list {
  SKPriceLocaleMessage *pigeonResult = [[SKPriceLocaleMessage alloc] init];
  pigeonResult.currencySymbol = GetNullableObjectAtIndex(list, 0);
  pigeonResult.currencyCode = GetNullableObjectAtIndex(list, 1);
  pigeonResult.countryCode = GetNullableObjectAtIndex(list, 2);
  return pigeonResult;
}
+ (nullable SKPriceLocaleMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKPriceLocaleMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.currencySymbol ?: [NSNull null],
    self.currencyCode ?: [NSNull null],
    self.countryCode ?: [NSNull null],
  ];
}
@end

@implementation SKProductDiscountMessage
+ (instancetype)makeWithPrice:(NSString *)price
                  priceLocale:(SKPriceLocaleMessage *)priceLocale
              numberOfPeriods:(NSInteger)numberOfPeriods
                  paymentMode:(SKProductDiscountPaymentModeMessage)paymentMode
           subscriptionPeriod:(SKProductSubscriptionPeriodMessage *)subscriptionPeriod
                   identifier:(nullable NSString *)identifier
                         type:(SKProductDiscountTypeMessage)type {
  SKProductDiscountMessage *pigeonResult = [[SKProductDiscountMessage alloc] init];
  pigeonResult.price = price;
  pigeonResult.priceLocale = priceLocale;
  pigeonResult.numberOfPeriods = numberOfPeriods;
  pigeonResult.paymentMode = paymentMode;
  pigeonResult.subscriptionPeriod = subscriptionPeriod;
  pigeonResult.identifier = identifier;
  pigeonResult.type = type;
  return pigeonResult;
}
+ (SKProductDiscountMessage *)fromList:(NSArray *)list {
  SKProductDiscountMessage *pigeonResult = [[SKProductDiscountMessage alloc] init];
  pigeonResult.price = GetNullableObjectAtIndex(list, 0);
  pigeonResult.priceLocale =
      [SKPriceLocaleMessage nullableFromList:(GetNullableObjectAtIndex(list, 1))];
  pigeonResult.numberOfPeriods = [GetNullableObjectAtIndex(list, 2) integerValue];
  pigeonResult.paymentMode = [GetNullableObjectAtIndex(list, 3) integerValue];
  pigeonResult.subscriptionPeriod =
      [SKProductSubscriptionPeriodMessage nullableFromList:(GetNullableObjectAtIndex(list, 4))];
  pigeonResult.identifier = GetNullableObjectAtIndex(list, 5);
  pigeonResult.type = [GetNullableObjectAtIndex(list, 6) integerValue];
  return pigeonResult;
}
+ (nullable SKProductDiscountMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKProductDiscountMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.price ?: [NSNull null],
    (self.priceLocale ? [self.priceLocale toList] : [NSNull null]),
    @(self.numberOfPeriods),
    @(self.paymentMode),
    (self.subscriptionPeriod ? [self.subscriptionPeriod toList] : [NSNull null]),
    self.identifier ?: [NSNull null],
    @(self.type),
  ];
}
@end

@implementation SKProductSubscriptionPeriodMessage
+ (instancetype)makeWithNumberOfUnits:(NSInteger)numberOfUnits
                                 unit:(SKSubscriptionPeriodUnitMessage)unit {
  SKProductSubscriptionPeriodMessage *pigeonResult =
      [[SKProductSubscriptionPeriodMessage alloc] init];
  pigeonResult.numberOfUnits = numberOfUnits;
  pigeonResult.unit = unit;
  return pigeonResult;
}
+ (SKProductSubscriptionPeriodMessage *)fromList:(NSArray *)list {
  SKProductSubscriptionPeriodMessage *pigeonResult =
      [[SKProductSubscriptionPeriodMessage alloc] init];
  pigeonResult.numberOfUnits = [GetNullableObjectAtIndex(list, 0) integerValue];
  pigeonResult.unit = [GetNullableObjectAtIndex(list, 1) integerValue];
  return pigeonResult;
}
+ (nullable SKProductSubscriptionPeriodMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [SKProductSubscriptionPeriodMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    @(self.numberOfUnits),
    @(self.unit),
  ];
}
@end

@interface InAppPurchaseAPICodecReader : FlutterStandardReader
@end
@implementation InAppPurchaseAPICodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128:
      return [SKErrorMessage fromList:[self readValue]];
    case 129:
      return [SKPaymentDiscountMessage fromList:[self readValue]];
    case 130:
      return [SKPaymentMessage fromList:[self readValue]];
    case 131:
      return [SKPaymentTransactionMessage fromList:[self readValue]];
    case 132:
      return [SKPriceLocaleMessage fromList:[self readValue]];
    case 133:
      return [SKProductDiscountMessage fromList:[self readValue]];
    case 134:
      return [SKProductMessage fromList:[self readValue]];
    case 135:
      return [SKProductSubscriptionPeriodMessage fromList:[self readValue]];
    case 136:
      return [SKProductsResponseMessage fromList:[self readValue]];
    case 137:
      return [SKStorefrontMessage fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface InAppPurchaseAPICodecWriter : FlutterStandardWriter
@end
@implementation InAppPurchaseAPICodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[SKErrorMessage class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SKPaymentDiscountMessage class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SKPaymentMessage class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SKPaymentTransactionMessage class]]) {
    [self writeByte:131];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SKPriceLocaleMessage class]]) {
    [self writeByte:132];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SKProductDiscountMessage class]]) {
    [self writeByte:133];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SKProductMessage class]]) {
    [self writeByte:134];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SKProductSubscriptionPeriodMessage class]]) {
    [self writeByte:135];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SKProductsResponseMessage class]]) {
    [self writeByte:136];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[SKStorefrontMessage class]]) {
    [self writeByte:137];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface InAppPurchaseAPICodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation InAppPurchaseAPICodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[InAppPurchaseAPICodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[InAppPurchaseAPICodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *InAppPurchaseAPIGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    InAppPurchaseAPICodecReaderWriter *readerWriter =
        [[InAppPurchaseAPICodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void SetUpInAppPurchaseAPI(id<FlutterBinaryMessenger> binaryMessenger,
                           NSObject<InAppPurchaseAPI> *api) {
  /// Returns if the current device is able to make payments
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:
               @"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI.canMakePayments"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert(
          [api respondsToSelector:@selector(canMakePaymentsWithError:)],
          @"InAppPurchaseAPI api (%@) doesn't respond to @selector(canMakePaymentsWithError:)",
          api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api canMakePaymentsWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI.transactions"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(transactionsWithError:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to @selector(transactionsWithError:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<SKPaymentTransactionMessage *> *output = [api transactionsWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI.storefront"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(storefrontWithError:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to @selector(storefrontWithError:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        SKStorefrontMessage *output = [api storefrontWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI.addPayment"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert(
          [api respondsToSelector:@selector(addPaymentPaymentMap:error:)],
          @"InAppPurchaseAPI api (%@) doesn't respond to @selector(addPaymentPaymentMap:error:)",
          api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSDictionary<NSString *, id> *arg_paymentMap = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api addPaymentPaymentMap:arg_paymentMap error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:
               @"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI.startProductRequest"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(startProductRequestProductIdentifiers:
                                                                             completion:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(startProductRequestProductIdentifiers:completion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSArray<NSString *> *arg_productIdentifiers = GetNullableObjectAtIndex(args, 0);
        [api startProductRequestProductIdentifiers:arg_productIdentifiers
                                        completion:^(SKProductsResponseMessage *_Nullable output,
                                                     FlutterError *_Nullable error) {
                                          callback(wrapResult(output, error));
                                        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:
               @"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI.finishTransaction"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(finishTransactionFinishMap:error:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(finishTransactionFinishMap:error:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSDictionary<NSString *, id> *arg_finishMap = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api finishTransactionFinishMap:arg_finishMap error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:
               @"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI.restoreTransactions"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(restoreTransactionsApplicationUserName:error:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(restoreTransactionsApplicationUserName:error:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_applicationUserName = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api restoreTransactionsApplicationUserName:arg_applicationUserName error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI."
                        @"presentCodeRedemptionSheet"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(presentCodeRedemptionSheetWithError:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(presentCodeRedemptionSheetWithError:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api presentCodeRedemptionSheetWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:
               @"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI.retrieveReceiptData"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert(
          [api respondsToSelector:@selector(retrieveReceiptDataWithError:)],
          @"InAppPurchaseAPI api (%@) doesn't respond to @selector(retrieveReceiptDataWithError:)",
          api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSString *output = [api retrieveReceiptDataWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:
               @"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI.refreshReceipt"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(refreshReceiptReceiptProperties:completion:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(refreshReceiptReceiptProperties:completion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSDictionary<NSString *, id> *arg_receiptProperties = GetNullableObjectAtIndex(args, 0);
        [api refreshReceiptReceiptProperties:arg_receiptProperties
                                  completion:^(FlutterError *_Nullable error) {
                                    callback(wrapResult(nil, error));
                                  }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI."
                        @"startObservingPaymentQueue"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(startObservingPaymentQueueWithError:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(startObservingPaymentQueueWithError:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api startObservingPaymentQueueWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI."
                        @"stopObservingPaymentQueue"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(stopObservingPaymentQueueWithError:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(stopObservingPaymentQueueWithError:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api stopObservingPaymentQueueWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI."
                        @"registerPaymentQueueDelegate"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(registerPaymentQueueDelegateWithError:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(registerPaymentQueueDelegateWithError:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api registerPaymentQueueDelegateWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI."
                        @"removePaymentQueueDelegate"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(removePaymentQueueDelegateWithError:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(removePaymentQueueDelegateWithError:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api removePaymentQueueDelegateWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.in_app_purchase_storekit.InAppPurchaseAPI."
                        @"showPriceConsentIfNeeded"
        binaryMessenger:binaryMessenger
                  codec:InAppPurchaseAPIGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(showPriceConsentIfNeededWithError:)],
                @"InAppPurchaseAPI api (%@) doesn't respond to "
                @"@selector(showPriceConsentIfNeededWithError:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api showPriceConsentIfNeededWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
