Util = assert require 'src/Util'

export Res = {
  Fonts: {
    ['small']: love.graphics.newFont('fonts/font.ttf', 8),
    ['medium']: love.graphics.newFont('fonts/font.ttf', 16),
    ['large']: love.graphics.newFont('fonts/font.ttf', 32)
  },
  Textures: {
    ['background']: love.graphics.newImage('graphics/background.png'),
    ['main']: love.graphics.newImage('graphics/atlas.png'),
    ['arrows']: love.graphics.newImage('graphics/arrows.png'),
    ['hearts']: love.graphics.newImage('graphics/hearts.png'),
    ['particle']: love.graphics.newImage('graphics/particle.png')
  },
  Sounds: {
    ['paddle-hit']: love.audio.newSource('sounds/paddle_hit.wav', 'static'),
    ['score']: love.audio.newSource('sounds/score.wav', 'static'),
    ['wall-hit']: love.audio.newSource('sounds/wall_hit.wav', 'static'),
    ['confirm']: love.audio.newSource('sounds/confirm.wav', 'static'),
    ['select']: love.audio.newSource('sounds/select.wav', 'static'),
    ['no-select']: love.audio.newSource('sounds/no-select.wav', 'static'),
    ['brick-hit-1']: love.audio.newSource('sounds/brick-hit-1.wav', 'static'),
    ['brick-hit-2']: love.audio.newSource('sounds/brick-hit-2.wav', 'static'),
    ['hurt']: love.audio.newSource('sounds/hurt.wav', 'static'),
    ['victory']: love.audio.newSource('sounds/victory.wav', 'static'),
    ['recover']: love.audio.newSource('sounds/recover.wav', 'static'),
    ['high-score']: love.audio.newSource('sounds/high_score.wav', 'static'),
    ['pause']: love.audio.newSource('sounds/pause.wav', 'static'),

    ['music']: love.audio.newSource('sounds/music.wav', 'static')
  }
}

export Frames = {
  ['paddles']: Util.GenerateQuadsPaddles Res.Textures['main'],
  ['balls']: Util.GenerateQuadsBalls Res.Textures['main'],
  ['bricks']: Util.GenerateQuadsBricks Res.Textures['main']
  ['hearts']: Util.GenerateQuads Res.Textures['hearts'], 10, 9
}
