(declare-fun e0_ack!67 () (_ BitVec 64))
(declare-fun e1_ack!68 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun e2_ack!69 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!67)
                    ((_ to_fp 11 53) e0_ack!67))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!68)
                    ((_ to_fp 11 53) e1_ack!68))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY e2_ack!69 e2_ack!69))

(check-sat)
(exit)
