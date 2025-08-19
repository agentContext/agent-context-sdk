const samples = require('../samples/GuideApi');
const ErrorResponse = require('../models/ErrorResponse');
const GuideItemResponse = require('../models/GuideItemResponse');
const GuideListResponse = require('../models/GuideListResponse');
const GuideSearchResponse = require('../models/GuideSearchResponse');
const utils = require('../utils/utils');

module.exports = {
    guideGet: {
        key: 'guideGet',
        noun: 'guide',
        display: {
            label: '获取 guide 列表（按关键词）',
            description: '',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'q',
                    label: '搜索关键词',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'page',
                    label: '页码（默认 1）',
                    type: 'integer',
                },
                {
                    key: 'limit',
                    label: '每页数量（默认 20）',
                    type: 'integer',
                },
            ],
            outputFields: [
                ...GuideListResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://api/v1/guide'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'q': bundle.inputData?.['q'],
                        'page': bundle.inputData?.['page'],
                        'limit': bundle.inputData?.['limit'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'guideGet', response.json);
                    return results;
                })
            },
            sample: samples['GuideListResponseSample']
        }
    },
    guideIdIdGet: {
        key: 'guideIdIdGet',
        noun: 'guide',
        display: {
            label: '获取指定 guide（按 id）',
            description: '',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: '',
                    type: 'number',
                    required: true,
                },
            ],
            outputFields: [
                ...GuideItemResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://api/v1/guide/id/{id}'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'guideIdIdGet', response.json);
                    return results;
                })
            },
            sample: samples['GuideItemResponseSample']
        }
    },
    guidePkgPkgnameGet: {
        key: 'guidePkgPkgnameGet',
        noun: 'guide',
        display: {
            label: '获取某包名下的 guide 列表',
            description: '',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'pkgname',
                    label: '',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'page',
                    label: '页码（默认 1）',
                    type: 'integer',
                },
                {
                    key: 'limit',
                    label: '每页数量（默认 20）',
                    type: 'integer',
                },
            ],
            outputFields: [
                ...GuideListResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://api/v1/guide/pkg/{pkgname}'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'page': bundle.inputData?.['page'],
                        'limit': bundle.inputData?.['limit'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'guidePkgPkgnameGet', response.json);
                    return results;
                })
            },
            sample: samples['GuideListResponseSample']
        }
    },
    guideSearchPkgnameGet: {
        key: 'guideSearchPkgnameGet',
        noun: 'guide',
        display: {
            label: '在指定包下根据关键词搜索 guide（词向量相似度）',
            description: '',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'pkgname',
                    label: '',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'q',
                    label: '搜索关键词',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'page',
                    label: '页码（默认 1）',
                    type: 'integer',
                },
                {
                    key: 'limit',
                    label: '每页数量（默认 20）',
                    type: 'integer',
                },
            ],
            outputFields: [
                ...GuideSearchResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://api/v1/guide/search/{pkgname}'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'q': bundle.inputData?.['q'],
                        'page': bundle.inputData?.['page'],
                        'limit': bundle.inputData?.['limit'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'guideSearchPkgnameGet', response.json);
                    return results;
                })
            },
            sample: samples['GuideSearchResponseSample']
        }
    },
}
