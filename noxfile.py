import os
import nox

os.environ.update({"PDM_IGNORE_SAVED_PYTHON": "1"})

@nox.session(python=["3.10"])
def test(session) -> None:
    session.run('pdm', 'install', '-G', 'test', external=True)
    session.run('pdm', 'install', '-G', 'lint', external=True)
    session.run('pdm', 'install', '-G', 'typing', external=True)

    session.run('pytest')
    session.run('flake8', 'hpcqc')
    session.run('mypy', '-p', 'hpcqc')
