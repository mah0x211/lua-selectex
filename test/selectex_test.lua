local format = string.format
local find = string.find
local unpack = unpack or table.unpack
local assert = require('assertex')
local selectex = require('selectex')

local function test_len()
    -- test that returns number of arguments
    assert.equal(selectex.len('foo', 'bar', 'baz'), 3)
    assert.equal(selectex.len(), 0)
end

local function test_head()
    local value = {'foo', 'bar', 'baz', 'qux', 'quux'}

    -- test that returns the variadic arguments from the first to the index-th.
    for _, v in ipairs({
        {
            index = -1,
            equal = {},
        },
        {
            index = 1,
            equal = {'foo'},
        },
        {
            index = 4,
            equal = {'foo', 'bar', 'baz', 'qux'},
        },
        {
            index = #value,
            equal = value,
        },
        {
            index = #value + 1,
            equal = value,
        },
    }) do
        assert.equal({selectex.head(v.index, unpack(value))}, v.equal)
    end

    -- test that throw erorr if index is not integer
    local err = assert.throws(function()
        selectex.head()
    end)
    assert(find(err, '#1 .+ [(]number expected,'), err)
end

local function test_tail()
    local value = {'foo', 'bar', 'baz', 'qux', 'quux'}

    -- test that returns the variadic arguments from the index-th to the last
    for _, v in ipairs({
        {
            index = -1,
            equal = value,
        },
        {
            index = 1,
            equal = value,
        },
        {
            index = 4,
            equal = {'qux', 'quux'},
        },
        {
            index = #value,
            equal = {'quux'},
        },
        {
            index = #value + 1,
            equal = {},
        },
    }) do
        assert.equal({selectex.tail(v.index, unpack(value))}, v.equal)
    end

    -- test that throw erorr if index is not integer
    local err = assert.throws(function()
        selectex.tail()
    end)
    assert(find(err, '#1 .+ [(]number expected,'), err)
end

test_len()
test_head()
test_tail()
