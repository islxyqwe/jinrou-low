import * as React from 'react';
import { observer } from 'mobx-react';
import * as Color from 'color';
import { PlayerInfo } from '../defs';
import styled from '../../../util/styled';
import { withProps } from '../../../util/styled';
import { Icon } from './icon';
import { TranslationFunction } from 'i18next';
import { FontAwesomeIcon } from '../../../util/icon';
import { bind } from 'bind-decorator';
import { notPhone, phone } from '../../../common/media';

export interface IPropPlayerBox {
  t: TranslationFunction;
  player: PlayerInfo;
  onEnableFilter(): void;
}
/**
 * A box which shows one player.
 */
@observer
export class PlayerBox extends React.Component<IPropPlayerBox, {}> {
  public render() {
    const {
      t,
      player: {
        id,
        realid,
        icon,
        name,
        anonymous,
        dead,
        jobname,
        winner,
        flags,
      },
    } = this.props;
    return (
      <Wrapper dead={dead} hasIcon={icon != null}>
        <Icon t={t} icon={icon} dead={dead} />
        <Name dead={dead}>
          {anonymous ? (
            name
          ) : (
            <a href={`/user/${realid ? realid : id}`}>{name}</a>
          )}
        </Name>
        <ToolIcons>
          <span onClick={this.handleFilterClick}>
            <FontAwesomeIcon icon="search" />
          </span>
        </ToolIcons>
        {flags.length > 0 ? (
          <Jobname>
            {flags.map(flag => (
              <div key={flag}>[{t(`game_client:playerbox.flags.${flag}`)}]</div>
            ))}
          </Jobname>
        ) : null}
        {jobname ? <Jobname>{jobname}</Jobname> : null}
        {winner != null ? (
          <Winner winner={winner}>
            {winner
              ? t('game_client:playerbox.win')
              : t('game_client:playerbox.lose')}
          </Winner>
        ) : null}
      </Wrapper>
    );
  }
  @bind
  private handleFilterClick() {
    // Handle a click of filter icon.
    this.props.onEnableFilter();
  }
}

/**
 * Wrapper of player box.
 */
const Wrapper = withProps<{
  dead: boolean;
  hasIcon: boolean;
}>()(styled.div)`
  min-width: ${props => (props.hasIcon ? '8em' : '5em')};
  min-height: 2em;

  margin: 4px 0 4px 0.5em;
  padding: 0.2em;
  border: 1px solid ${({ theme }) =>
    Color(theme.globalStyle.color)
      .fade(0.6)
      .string()};

  display: grid;
  grid-template-columns: auto 1fr auto;

  background-color: ${props =>
    props.dead ? 'rgba(0, 0, 0, 0.1)' : 'transparent'};

  ${phone`
    font-size: small;
  `}
  ${notPhone`
    &:first-child {
      margin-left: 0;
    }
  `}
`;

const Name = withProps<{ dead: boolean }>()(styled.span)`
  grid-column: 2;
  grid-row: 1;
  text-decoration: ${props => (props.dead ? 'line-through' : 'none')};
`;

const ToolIcons = styled.span`
  grid-column: 3;
  grid-row: 1;
  visibility: hidden;
  cursor: pointer;
  margin: 0 0 0 0.3em;

  ${Wrapper}:hover & {
    visibility: visible;
  }

  ${phone`
    margin-left: 1em;
  `};
`;

const Jobname = styled.div`
  grid-column: 2 / 4;
  grid-row: 2;
  font-weight: bold;
`;

const Winner = withProps<{ winner: boolean }>()(styled.div)`
  grid-column: 2 / 4;
  grid-row: 3;
  font-weight: bold;
  color: ${props => (props.winner ? 'red' : 'blue')};
`;
