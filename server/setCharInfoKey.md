import Tabs from '@theme/Tabs'
import TabItem from '@theme/TabItem'

# Get

This function successfully retrieves the player and updates the charinfo column.

```typescript
NX.Players.Get(source)
```

---

## Example

<Tabs>
<TabItem value="ts" label="TypeScript/JavaScript">

```typescript title="/rc/server/player/player.service.ts"
const NX = exports.NX.useServer()

const nxPlayer = NX.Players.Get(1)

nxPlayer.SetCharInfoKey('sex', 'male')
```

</TabItem>
<TabItem value="lua" label="Lua">

```lua title="/rc/server/player/player.service.ts"
local NX = exports['NX']:useServer()

local nxPlayer = NX.Players.Get(1)

nxPlayer.SetCharInfoKey('firstname', 'john')
```

</TabItem>
</Tabs>

## Arguments

| Argument | Data Type | Optional | Default Value | Explanation       |
| -------- | --------- | -------- | ------------- | ----------------- |
| key      | String    | No       | -             | The key to change |
| value    | String    | No       | -             | The value to add  |
