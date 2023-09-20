(declare-fun l0_ack!43 () (_ BitVec 64))
(declare-fun u0_ack!42 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!42) ((_ to_fp 11 53) l0_ack!43))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!42)
                       ((_ to_fp 11 53) l0_ack!43))
               ((_ to_fp 11 53) l0_ack!43))
       ((_ to_fp 11 53) u0_ack!42)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) u0_ack!42)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!42)
                       ((_ to_fp 11 53) l0_ack!43)))
       ((_ to_fp 11 53) l0_ack!43)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) u0_ack!42)
               ((_ to_fp 11 53) l0_ack!43))
       ((_ to_fp 11 53) #x7fefffffffffffff)))

(check-sat)
(exit)
