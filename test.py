from typing import Any, Dict, Sequence, Tuple, Union, List
from envs.unitree_h1_env import UnitreeH1WalkEnvConfig
from envs.unitree_go2_env import UnitreeGo2EnvConfig
from envs.unitree_h1_v2_env import UnitreeH1V2WalkEnvConfig
from envs.panda_env import FrankaPandaEnvConfig


_configs = {
    "unitree_h1_walk": UnitreeH1WalkEnvConfig,
    "unitree_go2_walk": UnitreeGo2EnvConfig,
    "unitree_h1_v2_walk": UnitreeH1V2WalkEnvConfig,
    "panda_reach": FrankaPandaEnvConfig,
}


def register_config(name: str, config: Any):
    _configs[name] = config


def get_config(name: str) -> Any:
    return _configs[name]
