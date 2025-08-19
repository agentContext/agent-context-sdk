const utils = require('../utils/utils');
const AnyType = require('../models/AnyType');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}id`,
                label: `[${labelPrefix}id]`,
                required: true,
                type: 'number',
            },
            {
                key: `${keyPrefix}packageName`,
                label: `[${labelPrefix}packageName]`,
                required: true,
                type: 'string',
            },
            ....fields(`${keyPrefix}vector`, isInput),
            {
                key: `${keyPrefix}action`,
                label: `[${labelPrefix}action]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}description`,
                label: `[${labelPrefix}description]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}tokens`,
                label: `[${labelPrefix}tokens]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}source`,
                label: `[${labelPrefix}source]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}solution`,
                label: `[${labelPrefix}solution]`,
                required: true,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'packageName': bundle.inputData?.[`${keyPrefix}packageName`],
            'vector': utils.removeIfEmpty(.mapping(bundle, `${keyPrefix}vector`)),
            'action': bundle.inputData?.[`${keyPrefix}action`],
            'description': bundle.inputData?.[`${keyPrefix}description`],
            'tokens': bundle.inputData?.[`${keyPrefix}tokens`],
            'source': bundle.inputData?.[`${keyPrefix}source`],
            'solution': bundle.inputData?.[`${keyPrefix}solution`],
        }
    },
}
