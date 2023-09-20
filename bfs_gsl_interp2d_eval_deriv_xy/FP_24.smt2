(declare-fun x1_ack!747 () (_ BitVec 64))
(declare-fun x0_ack!751 () (_ BitVec 64))
(declare-fun y0_ack!748 () (_ BitVec 64))
(declare-fun x_ack!749 () (_ BitVec 64))
(declare-fun y_ack!750 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!751) ((_ to_fp 11 53) x1_ack!747))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!748) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!749) ((_ to_fp 11 53) x0_ack!751))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!749) ((_ to_fp 11 53) x1_ack!747))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!750) ((_ to_fp 11 53) y0_ack!748))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!750) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!749) ((_ to_fp 11 53) x0_ack!751))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!749) ((_ to_fp 11 53) x1_ack!747))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!750) ((_ to_fp 11 53) y0_ack!748))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!750) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!747)
                       ((_ to_fp 11 53) x0_ack!751))
               ((_ to_fp 11 53) x0_ack!751))
       ((_ to_fp 11 53) x1_ack!747)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!747)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!747)
                       ((_ to_fp 11 53) x0_ack!751)))
       ((_ to_fp 11 53) x0_ack!751)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!748))
               ((_ to_fp 11 53) y0_ack!748))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!748)))
       ((_ to_fp 11 53) y0_ack!748)))

(check-sat)
(exit)
