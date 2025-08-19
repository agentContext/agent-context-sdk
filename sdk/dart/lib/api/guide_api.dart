//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GuideApi {
  GuideApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 获取 guide 列表（按关键词）
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
  Future<Response> guideGetWithHttpInfo(String q, { int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/guide';

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

  /// 获取 guide 列表（按关键词）
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
  Future<GuideListResponse?> guideGet(String q, { int? page, int? limit, }) async {
    final response = await guideGetWithHttpInfo(q,  page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuideListResponse',) as GuideListResponse;
    
    }
    return null;
  }

  /// 获取指定 guide（按 id）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> guideIdIdGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/guide/id/{id}'
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

  /// 获取指定 guide（按 id）
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<GuideItemResponse?> guideIdIdGet(int id,) async {
    final response = await guideIdIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuideItemResponse',) as GuideItemResponse;
    
    }
    return null;
  }

  /// 获取某包名下的 guide 列表
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pkgname (required):
  ///
  /// * [int] page:
  ///   页码（默认 1）
  ///
  /// * [int] limit:
  ///   每页数量（默认 20）
  Future<Response> guidePkgPkgnameGetWithHttpInfo(String pkgname, { int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/guide/pkg/{pkgname}'
      .replaceAll('{pkgname}', pkgname);

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

  /// 获取某包名下的 guide 列表
  ///
  /// Parameters:
  ///
  /// * [String] pkgname (required):
  ///
  /// * [int] page:
  ///   页码（默认 1）
  ///
  /// * [int] limit:
  ///   每页数量（默认 20）
  Future<GuideListResponse?> guidePkgPkgnameGet(String pkgname, { int? page, int? limit, }) async {
    final response = await guidePkgPkgnameGetWithHttpInfo(pkgname,  page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuideListResponse',) as GuideListResponse;
    
    }
    return null;
  }

  /// 在指定包下根据关键词搜索 guide（词向量相似度）
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pkgname (required):
  ///
  /// * [String] q (required):
  ///   搜索关键词
  ///
  /// * [int] page:
  ///   页码（默认 1）
  ///
  /// * [int] limit:
  ///   每页数量（默认 20）
  Future<Response> guideSearchPkgnameGetWithHttpInfo(String pkgname, String q, { int? page, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/guide/search/{pkgname}'
      .replaceAll('{pkgname}', pkgname);

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

  /// 在指定包下根据关键词搜索 guide（词向量相似度）
  ///
  /// Parameters:
  ///
  /// * [String] pkgname (required):
  ///
  /// * [String] q (required):
  ///   搜索关键词
  ///
  /// * [int] page:
  ///   页码（默认 1）
  ///
  /// * [int] limit:
  ///   每页数量（默认 20）
  Future<GuideSearchResponse?> guideSearchPkgnameGet(String pkgname, String q, { int? page, int? limit, }) async {
    final response = await guideSearchPkgnameGetWithHttpInfo(pkgname, q,  page: page, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GuideSearchResponse',) as GuideSearchResponse;
    
    }
    return null;
  }
}
