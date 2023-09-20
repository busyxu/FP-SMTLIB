(declare-fun l0_ack!13 () (_ BitVec 64))
(declare-fun u0_ack!12 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!12) ((_ to_fp 11 53) l0_ack!13))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!12)
                       ((_ to_fp 11 53) l0_ack!13))
               ((_ to_fp 11 53) l0_ack!13))
       ((_ to_fp 11 53) u0_ack!12)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) u0_ack!12)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!12)
                       ((_ to_fp 11 53) l0_ack!13)))
       ((_ to_fp 11 53) l0_ack!13)))

(check-sat)
(exit)
