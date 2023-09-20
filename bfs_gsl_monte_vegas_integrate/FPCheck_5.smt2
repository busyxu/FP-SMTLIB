(declare-fun l0_ack!35 () (_ BitVec 64))
(declare-fun u0_ack!33 () (_ BitVec 64))
(declare-fun l1_ack!32 () (_ BitVec 64))
(declare-fun u1_ack!34 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!33) ((_ to_fp 11 53) l0_ack!35))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!33)
                       ((_ to_fp 11 53) l0_ack!35))
               ((_ to_fp 11 53) l0_ack!35))
       ((_ to_fp 11 53) u0_ack!33)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) u0_ack!33)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!33)
                       ((_ to_fp 11 53) l0_ack!35)))
       ((_ to_fp 11 53) l0_ack!35)))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) u0_ack!33)
                    ((_ to_fp 11 53) l0_ack!35))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (not (fp.leq ((_ to_fp 11 53) u1_ack!34) ((_ to_fp 11 53) l1_ack!32))))
(assert (FPCHECK_FSUB_ACCURACY u1_ack!34 l1_ack!32))

(check-sat)
(exit)
