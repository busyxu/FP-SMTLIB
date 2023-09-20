(declare-fun l0_ack!19 () (_ BitVec 64))
(declare-fun u0_ack!17 () (_ BitVec 64))
(declare-fun l1_ack!16 () (_ BitVec 64))
(declare-fun u1_ack!18 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!17) ((_ to_fp 11 53) l0_ack!19))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!17)
                       ((_ to_fp 11 53) l0_ack!19))
               ((_ to_fp 11 53) l0_ack!19))
       ((_ to_fp 11 53) u0_ack!17)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) u0_ack!17)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!17)
                       ((_ to_fp 11 53) l0_ack!19)))
       ((_ to_fp 11 53) l0_ack!19)))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) u0_ack!17)
                    ((_ to_fp 11 53) l0_ack!19))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (not (fp.leq ((_ to_fp 11 53) u1_ack!18) ((_ to_fp 11 53) l1_ack!16))))

(check-sat)
(exit)
