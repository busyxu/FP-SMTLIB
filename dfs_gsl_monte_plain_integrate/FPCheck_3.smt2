(declare-fun l0_ack!21 () (_ BitVec 64))
(declare-fun u0_ack!19 () (_ BitVec 64))
(declare-fun l1_ack!18 () (_ BitVec 64))
(declare-fun u1_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!19) ((_ to_fp 11 53) l0_ack!21))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!19)
                       ((_ to_fp 11 53) l0_ack!21))
               ((_ to_fp 11 53) l0_ack!21))
       ((_ to_fp 11 53) u0_ack!19)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) u0_ack!19)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!19)
                       ((_ to_fp 11 53) l0_ack!21)))
       ((_ to_fp 11 53) l0_ack!21)))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) u0_ack!19)
                    ((_ to_fp 11 53) l0_ack!21))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (not (fp.leq ((_ to_fp 11 53) u1_ack!20) ((_ to_fp 11 53) l1_ack!18))))
(assert (FPCHECK_FSUB_OVERFLOW u1_ack!20 l1_ack!18))

(check-sat)
(exit)
