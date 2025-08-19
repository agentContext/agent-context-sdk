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
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'data': utils.childMapping(bundle.inputData?.[`${keyPrefix}data`], `${keyPrefix}data`, Guide),
            'paging': utils.removeIfEmpty(Paging.mapping(bundle, `${keyPrefix}paging`)),
        }
    },
}
