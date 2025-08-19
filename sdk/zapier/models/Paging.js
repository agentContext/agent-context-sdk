const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}limit`,
                label: `[${labelPrefix}limit]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}page`,
                label: `[${labelPrefix}page]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}total`,
                label: `[${labelPrefix}total]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}kw`,
                label: `可选，搜索关键词回显 - [${labelPrefix}kw]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'limit': bundle.inputData?.[`${keyPrefix}limit`],
            'page': bundle.inputData?.[`${keyPrefix}page`],
            'total': bundle.inputData?.[`${keyPrefix}total`],
            'kw': bundle.inputData?.[`${keyPrefix}kw`],
        }
    },
}
