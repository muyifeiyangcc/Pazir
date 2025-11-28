import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:pazir/backend/softenembod.dart';

class FlotwIStinGood {
  late final StreamSubscription<List<PurchaseDetails>> _sWraMpuRkaLl;
  final InAppPurchase _iNsaFyoMra = InAppPurchase.instance;
  List<ProductDetails> _bReAthProDux = [];
  VoidCallback? kabHAviCa;

  int dreAmlAyoUT = 0;


  void inItiaLizePyrChaSeFlOw() {
    _sWraMpuRkaLl = _iNsaFyoMra.purchaseStream.listen(
      _rEacTEvOlVepUrChAseUpS,
      onDone: _diSpOseOblIqueLisT,
      onError: (error) => _sHoVoRraErr('There was an issue completing your purchase.', error),
    );
  }


  Future<void> inVokEPrOduCtReq(String productId) async {
    SmartDialog.showLoading();

    if (!await _iNsaFyoMra.isAvailable()) {
      _whiSpErToAst('Unable to connect to the store.');
      SmartDialog.dismiss();
      return;
    }

    final response = await _iNsaFyoMra.queryProductDetails({productId});
    if (response.notFoundIDs.isNotEmpty) {
      _whiSpErToAst('The specified product could not be located in the store.');
      SmartDialog.dismiss();
      return;
    }

    _bReAthProDux = response.productDetails;
    if (_bReAthProDux.isEmpty) {
      _whiSpErToAst('No product information available.');
      SmartDialog.dismiss();
      return;
    }

    _iGnItePurChAseFlow(productId);
  }

  
  void _iGnItePurChAseFlow(String productId) {
    try {
      final productDetails = _bReAthProDux.firstWhere((p) => p.id == productId);

      _iNsaFyoMra.buyConsumable(
        purchaseParam: PurchaseParam(productDetails: productDetails),
      );
    } catch (_) {
      _whiSpErToAst('The purchase process could not be initiated successfully.');
    }
  }

 
  void _rEacTEvOlVepUrChAseUpS(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      switch (purchase.status) {
        case PurchaseStatus.pending:
          _whiSpErToAst('Payment processing in progress...');
          break;

        case PurchaseStatus.canceled:
          _whiSpErToAst('You have canceled the payment.');
          _fInALizETrAnsiT(purchase);
          SmartDialog.dismiss();
          break;

        case PurchaseStatus.error:
          _whiSpErToAst('An error occurred during the purchase process.');
          _rEcorDmIsHal(error: purchase.error!);
          SmartDialog.dismiss();

          try {
            if (purchase.pendingCompletePurchase) {
              await InAppPurchase.instance.completePurchase(purchase);
            }
          } catch (_) {}
          break;

        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          _fInALizETrAnsiT(purchase);
          SmartDialog.dismiss();
          _uNfoLdSuCcesSRitUal();

          break;
      }
    }
  }

  
  void _fInALizETrAnsiT(PurchaseDetails purchase) {
    _iNsaFyoMra.completePurchase(purchase);

    final nEurAGraB = FFAppState.instance.viloMaHatiGo.where(
      (e) => e["breWStatEKey"] == purchase.productID,
    );

    if (nEurAGraB.isNotEmpty) {
      dreAmlAyoUT = nEurAGraB.first["adbRAnICount"];
    }
  }


  void _uNfoLdSuCcesSRitUal() {
    final uSerRaW = FFAppState.instance.dingingGetUser(FFAppState.instance.flexionLogUid);
    if (uSerRaW != null) {
      final eMbelLisHed = uSerRaW.copyWith(
        stillsUGood: uSerRaW.relations.stillsUGood + dreAmlAyoUT,
      );
      FFAppState.instance.chitASanUpd(eMbelLisHed);
    }

    _whiSpErToAst('Purchase successful');
    kabHAviCa?.call();
  }

  
  void _rEcorDmIsHal({required IAPError error}) {
    FFAppState.instance.bauJAyiEro.add(error.toString());
  }

  
  void _whiSpErToAst(String message) {
    SmartDialog.showToast(message);
  }

  
  void _sHoVoRraErr(String message, Object error) {
    debugPrint(error.toString());
    _whiSpErToAst(message);
  }

  
  void _diSpOseOblIqueLisT() {
    _sWraMpuRkaLl.cancel();
  }


  void onClose() => _diSpOseOblIqueLisT();
}
