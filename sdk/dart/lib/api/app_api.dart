//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AppApi {
  AppApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 获取 app 列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   页码（默认 1）
  ///
  /// * [int] limit:
  ///   每页数量（默认 20）
  Future<Response> appGetWithHttpInfo({ int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/app';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取 app 列表
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   页码（默认 1）
  ///
  /// * [int] limit:
  ///   每页数量（默认 20）
  Future<AppListResponse?> appGet({ int? page, int? limit, }) async {
    final response = await appGetWithHttpInfo( page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppListResponse',) as AppListResponse;
    
    }
    return null;
  }

  /// 获取指定 app 信息（按 id）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> appIdIdGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/app/id/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取指定 app 信息（按 id）
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<AppItemResponse?> appIdIdGet(int id,) async {
    final response = await appIdIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppItemResponse',) as AppItemResponse;
    
    }
    return null;
  }

  /// 获取指定 app 信息（按包名）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pkgname (required):
  Future<Response> appPkgPkgnameGetWithHttpInfo(String pkgname,) async {
    // ignore: prefer_const_declarations
    final path = r'/app/pkg/{pkgname}'
      .replaceAll('{pkgname}', pkgname);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 获取指定 app 信息（按包名）
  ///
  /// Parameters:
  ///
  /// * [String] pkgname (required):
  Future<AppItemResponse?> appPkgPkgnameGet(String pkgname,) async {
    final response = await appPkgPkgnameGetWithHttpInfo(pkgname,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppItemResponse',) as AppItemResponse;
    
    }
    return null;
  }

  /// 搜索 app
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   搜索关键词
  ///
  /// * [int] page:
  ///   页码（默认 1）
  ///
  /// * [int] limit:
  ///   每页数量（默认 20）
  Future<Response> appSearchGetWithHttpInfo(String q, { int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/app/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'q', q));
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// 搜索 app
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   搜索关键词
  ///
  /// * [int] page:
  ///   页码（默认 1）
  ///
  /// * [int] limit:
  ///   每页数量（默认 20）
  Future<AppListResponse?> appSearchGet(String q, { int? page, int? limit, }) async {
    final response = await appSearchGetWithHttpInfo(q,  page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppListResponse',) as AppListResponse;
    
    }
    return null;
  }
}
