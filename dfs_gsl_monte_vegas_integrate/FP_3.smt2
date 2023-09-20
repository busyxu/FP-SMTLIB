(declare-fun l0_ack!37 () (_ BitVec 64))
(declare-fun u0_ack!35 () (_ BitVec 64))
(declare-fun l1_ack!34 () (_ BitVec 64))
(declare-fun u1_ack!36 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!35) ((_ to_fp 11 53) l0_ack!37))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!35)
                       ((_ to_fp 11 53) l0_ack!37))
               ((_ to_fp 11 53) l0_ack!37))
       ((_ to_fp 11 53) u0_ack!35)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) u0_ack!35)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!35)
                       ((_ to_fp 11 53) l0_ack!37)))
       ((_ to_fp 11 53) l0_ack!37)))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) u0_ack!35)
                    ((_ to_fp 11 53) l0_ack!37))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (not (fp.leq ((_ to_fp 11 53) u1_ack!36) ((_ to_fp 11 53) l1_ack!34))))

(check-sat)
(exit)
