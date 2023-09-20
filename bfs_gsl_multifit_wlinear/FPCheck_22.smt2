(declare-fun e0_ack!61 () (_ BitVec 64))
(declare-fun e1_ack!62 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun e2_ack!63 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!61)
                    ((_ to_fp 11 53) e0_ack!61))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!62)
                    ((_ to_fp 11 53) e1_ack!62))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW e2_ack!63 e2_ack!63))

(check-sat)
(exit)
