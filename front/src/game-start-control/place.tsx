import * as React from 'react';
import * as ReactDOM from 'react-dom';
import {
    runInAction,
} from 'mobx';

import {
    CastingStore,
} from './store';
import {
    Casting,
} from './component';
import {
    CastingDefinition,
    LabeledGroup,
    RoleCategoryDefinition,
    RuleGroup,
} from '../defs';
import {
    forLanguage,
} from '../i18n';

/**
 * Options to place.
 */
export interface IPlaceOptions {
    /**
     * A node to place the component to.
     */
    node: HTMLElement;
    /**
     * Id of roles.
     */
    roles: string[];
    /**
     * Definition of castings.
     */
    castings: LabeledGroup<CastingDefinition, string>;
    /**
     * Definition of categories.
     */
    categories: RoleCategoryDefinition[];
    /**
     * Definition of rules.
     */
    rules: RuleGroup;
    /**
     * Initial selection of casting.
     */
    initialCasting: CastingDefinition;
}
export interface IPlaceResult {
    store: CastingStore;
    unmount(): void;
}

/**
 * Place a game start control component.
 * @returns Unmount point with newly created store.
 */
export function place({
    node,
    roles,
    castings,
    categories,
    rules,
    initialCasting,
}: IPlaceOptions): IPlaceResult {
    const store = new CastingStore(roles, initialCasting);
    store.setCurrentCasting(initialCasting);

    // TODO language
    const i18n = forLanguage('ja');

    // XXX ad-hoc but exclude hidden roles.
    const cs = excludeHiddenRoles(categories, roles);

    const com =
        <Casting
            i18n={i18n}
            store={store}
            roles={roles}
            castings={castings}
            categories={cs}
            rules={rules}
        />;

    ReactDOM.render(com, node);

    return {
        store,
        unmount: ()=>{
            ReactDOM.unmountComponentAtNode(node);
        },
    };
}

/**
 * Filter out hidden roles from categories.
 */
function excludeHiddenRoles(categories: RoleCategoryDefinition[], roles: string[]): RoleCategoryDefinition[] {
    // rolesをsetに変換
    const rolesSet = new Set(roles);
    const result: RoleCategoryDefinition[] = [];
    for (const {id, roles} of categories) {
        const r = roles.filter((x)=> rolesSet.has(x));
        if (r.length > 0) {
            result.push({
                id,
                roles: r,
            });
        }
    }
    return result;
}
