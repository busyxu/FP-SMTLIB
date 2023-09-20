(declare-fun mu_ack!6 () (_ BitVec 64))
(declare-fun x_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!6) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!7)
                    ((_ to_fp 11 53) x_ack!7))
            ((_ to_fp 11 53) mu_ack!6))))
(assert (FPCHECK_FMUL_OVERFLOW x_ack!7 x_ack!7))

(check-sat)
(exit)
