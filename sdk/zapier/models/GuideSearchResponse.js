const utils = require('../utils/utils');
const Guide = require('../models/Guide');
const Paging = require('../models/Paging');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}data`,
                label: `[${labelPrefix}data]`,
                children: Guide.fields(`${keyPrefix}data${!isInput ? '[]' : ''}`, isInput, true), 
            },
            ...Paging.fields(`${keyPrefix}paging`, isInput),
            {
                key: `${keyPrefix}score`,
                label: `与 data 同顺序的相似度分数 - [${labelPrefix}score]`,
                required: true,
                list: true,
                type: 'number',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'data': utils.childMapping(bundle.inputData?.[`${keyPrefix}data`], `${keyPrefix}data`, Guide),
            'paging': utils.removeIfEmpty(Paging.mapping(bundle, `${keyPrefix}paging`)),
            'score': bundle.inputData?.[`${keyPrefix}score`],
        }
    },
}
