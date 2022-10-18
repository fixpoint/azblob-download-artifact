import * as core from '@actions/core';
import { download } from './download';
import { loadConfigFromInputs } from './config';

async function main() {
  const config = loadConfigFromInputs();
  core.debug(`Config: ${config}`);

  await download(
    config.connectionString,
    config.name,
    config.path,
    config.container,
  );
}

main().catch((e) => {
  core.debug(e.stack);
  core.error(e.message);
  core.setFailed(e.message);
});
