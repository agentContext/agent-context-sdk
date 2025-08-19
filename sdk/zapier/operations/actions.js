const AppApi = require('../apis/AppApi');
const GuideApi = require('../apis/GuideApi');
const { triggerMiddleware, isTrigger, searchMiddleware, hasSearchRequisites, isSearchAction, isCreateAction, createMiddleware } = require('../utils/utils');

const actions = {
    [AppApi.appGet.key]: AppApi.appGet,
    [AppApi.appIdIdGet.key]: AppApi.appIdIdGet,
    [AppApi.appPkgPkgnameGet.key]: AppApi.appPkgPkgnameGet,
    [AppApi.appSearchGet.key]: AppApi.appSearchGet,
    [GuideApi.guideGet.key]: GuideApi.guideGet,
    [GuideApi.guideIdIdGet.key]: GuideApi.guideIdIdGet,
    [GuideApi.guidePkgPkgnameGet.key]: GuideApi.guidePkgPkgnameGet,
    [GuideApi.guideSearchPkgnameGet.key]: GuideApi.guideSearchPkgnameGet,
}

module.exports = {
    searchActions: () => Object.entries(actions).reduce((actions, [key, value]) => isSearchAction(key) && hasSearchRequisites(value) ? {...actions, [key]: searchMiddleware(value)} : actions, {}),
    createActions: () => Object.entries(actions).reduce((actions, [key, value]) => isCreateAction(key) ? {...actions, [key]: createMiddleware(value)} : actions, {}),
    triggers: () => Object.entries(actions).reduce((actions, [key, value]) => isTrigger(key) ? {...actions, [key]: triggerMiddleware(value)} : actions, {}),
}
