/**
 * Random wait time
 *
 * @param min minimum value
 * @param max maximum value
 *
 * @returns {*} random number
 */
function getRandomWait(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

module.exports = getRandomWait;