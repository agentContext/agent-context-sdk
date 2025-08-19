const samples = require('../samples/AppApi');
const AppItemResponse = require('../models/AppItemResponse');
const AppListResponse = require('../models/AppListResponse');
const ErrorResponse = require('../models/ErrorResponse');
const utils = require('../utils/utils');

module.exports = {
    appGet: {
        key: 'appGet',
        noun: 'app',
        display: {
            label: '获取 app 列表',
            description: '',
            hidden: false,
        },
        operation: {
            inputFields: [
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
                ...AppListResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://api/v1/app'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'appGet', response.json);
                    return results;
                })
            },
            sample: samples['AppListResponseSample']
        }
    },
    appIdIdGet: {
        key: 'appIdIdGet',
        noun: 'app',
        display: {
            label: '获取指定 app 信息（按 id）',
            description: '',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: '',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...AppItemResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://api/v1/app/id/{id}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'appIdIdGet', response.json);
                    return results;
                })
            },
            sample: samples['AppItemResponseSample']
        }
    },
    appPkgPkgnameGet: {
        key: 'appPkgPkgnameGet',
        noun: 'app',
        display: {
            label: '获取指定 app 信息（按包名）',
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
            ],
            outputFields: [
                ...AppItemResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://api/v1/app/pkg/{pkgname}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'appPkgPkgnameGet', response.json);
                    return results;
                })
            },
            sample: samples['AppItemResponseSample']
        }
    },
    appSearchGet: {
        key: 'appSearchGet',
        noun: 'app',
        display: {
            label: '搜索 app',
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
                ...AppListResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://api/v1/app/search'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'appSearchGet', response.json);
                    return results;
                })
            },
            sample: samples['AppListResponseSample']
        }
    },
}
