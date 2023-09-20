(declare-fun e0_ack!55 () (_ BitVec 64))
(declare-fun e1_ack!56 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun e2_ack!57 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!55)
                    ((_ to_fp 11 53) e0_ack!55))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!56)
                    ((_ to_fp 11 53) e1_ack!56))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW e2_ack!57 e2_ack!57))

(check-sat)
(exit)
