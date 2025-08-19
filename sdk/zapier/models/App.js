const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}Id`,
                label: `[${labelPrefix}Id]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}AppName`,
                label: `[${labelPrefix}AppName]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}PackageName`,
                label: `[${labelPrefix}PackageName]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}Description`,
                label: `[${labelPrefix}Description]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}Tokdens`,
                label: `[${labelPrefix}Tokdens]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}CreateAt`,
                label: `[${labelPrefix}CreateAt]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}UpdateAt`,
                label: `[${labelPrefix}UpdateAt]`,
                required: true,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'Id': bundle.inputData?.[`${keyPrefix}Id`],
            'AppName': bundle.inputData?.[`${keyPrefix}AppName`],
            'PackageName': bundle.inputData?.[`${keyPrefix}PackageName`],
            'Description': bundle.inputData?.[`${keyPrefix}Description`],
            'Tokdens': bundle.inputData?.[`${keyPrefix}Tokdens`],
            'CreateAt': bundle.inputData?.[`${keyPrefix}CreateAt`],
            'UpdateAt': bundle.inputData?.[`${keyPrefix}UpdateAt`],
        }
    },
}
