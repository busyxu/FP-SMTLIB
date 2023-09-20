(declare-fun x1_ack!137 () (_ BitVec 64))
(declare-fun x0_ack!141 () (_ BitVec 64))
(declare-fun y0_ack!138 () (_ BitVec 64))
(declare-fun x_ack!139 () (_ BitVec 64))
(declare-fun y_ack!140 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!141) ((_ to_fp 11 53) x1_ack!137))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!138) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!139) ((_ to_fp 11 53) x0_ack!141))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!139) ((_ to_fp 11 53) x1_ack!137))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!140) ((_ to_fp 11 53) y0_ack!138))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!140) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!139) ((_ to_fp 11 53) x0_ack!141))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!139) ((_ to_fp 11 53) x1_ack!137))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!140) ((_ to_fp 11 53) y0_ack!138))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!140) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!137)
                       ((_ to_fp 11 53) x0_ack!141))
               ((_ to_fp 11 53) x0_ack!141))
       ((_ to_fp 11 53) x1_ack!137)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!137)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!137)
                       ((_ to_fp 11 53) x0_ack!141)))
       ((_ to_fp 11 53) x0_ack!141)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!138))
               ((_ to_fp 11 53) y0_ack!138))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!138)))
       ((_ to_fp 11 53) y0_ack!138)))

(check-sat)
(exit)
