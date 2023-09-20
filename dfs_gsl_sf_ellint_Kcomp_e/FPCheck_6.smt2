(declare-fun a_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!14)
                     ((_ to_fp 11 53) a_ack!14))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!14)
                     ((_ to_fp 11 53) a_ack!14))
             ((_ to_fp 11 53) #x3feffffff8000000))))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!14 a_ack!14))

(check-sat)
(exit)
