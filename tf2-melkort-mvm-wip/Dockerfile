FROM ghcr.io/melkortf/tf2-sourcemod

COPY tf_mvm_missioncycle.res /home/tf2/server/tf/
COPY server.cfg /home/tf2/server/tf/cfg/

ENV MAP=mvm_coaltown

ENTRYPOINT ["./entrypoint.sh"]
CMD ["+sv_pure", "1", "+map", "mvm_coaltown", "+maxplayers", "40"]tf