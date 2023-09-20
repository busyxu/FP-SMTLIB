(declare-fun x_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!13))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!13)) ((_ to_fp 11 53) #x3fe5368f08461f9f)))
(assert (FPCHECK_FMUL_ACCURACY x_ack!13 x_ack!13))

(check-sat)
(exit)
