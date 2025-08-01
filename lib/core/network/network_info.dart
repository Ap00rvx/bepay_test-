abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  @override
  Future<bool> get isConnected async {
    // Implementation would use connectivity_plus package
    // For now, returning true as placeholder
    return true;
  }
}
