import * as React from 'react';
import { useI18n } from '../../../i18n/react';
import { Button } from '../../../common/forms/button';
import { FontAwesomeIcon } from '../../../util/icon';
import { ButtonContainer, Form, Description } from './elements';
import { ReportFormConfig } from '../defs';
import { Controls, ControlsMain } from '../../../common/forms/controls-wrapper';
import { RadioButtons } from '../../../common/forms/radio';
import { useLocalStore, useObserver } from 'mobx-react-lite';
import { PlainText } from '../../../common/forms/plain-text';
import { Textarea } from '../../../common/forms/text';

export const ReportForm: React.FC<{
  reportForm: ReportFormConfig;
}> = ({ reportForm }) => {
  const store = useLocalStore(() => ({
    open: false,
    kindIndex: 0,
    toggleOpen() {
      this.open = !this.open;
    },
    setKind(kindIndex: number) {
      this.kindIndex = kindIndex;
    },
  }));

  const mainFormRef = React.useRef<HTMLFormElement | null>(null);
  React.useEffect(
    () => {
      // if openState changed to true, scroll to the form.
      if (
        store.open &&
        mainFormRef.current != null &&
        mainFormRef.current.scrollIntoView != null
      ) {
        mainFormRef.current.scrollIntoView({
          behavior: 'smooth',
          block: 'nearest',
        });
      }
    },
    [store.open],
  );
  const handleKindChange = React.useCallback((kindIndexStr: string) => {
    store.setKind(Number(kindIndexStr));
  }, []);
  const t = useI18n('game_client');
  return useObserver(() => {
    if (t == null) {
      return null;
    }
    if (!reportForm.enable || reportForm.categories.length === 0) {
      return null;
    }
    const selected = reportForm.categories[store.kindIndex];
    return (
      <div>
        <ButtonContainer>
          <Button onClick={() => store.toggleOpen()}>
            <FontAwesomeIcon icon={['far', 'paper-plane']} />{' '}
            {t('reportForm.title')}
          </Button>
        </ButtonContainer>
        {!store.open ? null : (
          <section>
            <Form ref={mainFormRef}>
              <h2>{t('reportForm.title')}</h2>
              {t('reportForm.description')
                .split('\n')
                .map((line: string, i: number) => (
                  <Description key={i}>{line}</Description>
                ))}
              <Controls title={t('reportForm.kind')}>
                <RadioButtons
                  current={String(store.kindIndex)}
                  options={reportForm.categories.map((obj, i) => ({
                    value: String(i),
                    label: obj.name,
                    title: obj.description,
                  }))}
                  onChange={handleKindChange}
                />
                <PlainText>
                  <b>{selected.name}</b>: {selected.description}
                </PlainText>
              </Controls>
              <Controls title={t('reportForm.content')}>
                <Textarea
                  rows={5}
                  maxLength={reportForm.maxLength}
                  placeholder={t('reportForm.contentPlaceHolder')}
                />
              </Controls>
              <ControlsMain>
                <Button expand type="submit">
                  <FontAwesomeIcon icon={['far', 'paper-plane']} />{' '}
                  {t('reportForm.send')}
                </Button>
              </ControlsMain>
            </Form>
          </section>
        )}
      </div>
    );
  });
};
