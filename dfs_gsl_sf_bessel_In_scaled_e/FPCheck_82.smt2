(declare-fun b_ack!105 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!105))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!105))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!105))
  (fp.abs ((_ to_fp 11 53) b_ack!105))))

(check-sat)
(exit)
