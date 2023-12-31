import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quote_generator/features/discovery/discovery.dart';

final hasLikedQuoteUseCaseProvider = Provider<HasLikedQuote>((ref) {
  final repository = ref.watch(remoteQuoteRepositoryProvider);
  return HasLikedQuote(repository);
});
