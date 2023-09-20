(declare-fun b_ack!819 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!819))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!819))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!819))
  (fp.abs ((_ to_fp 11 53) b_ack!819))))

(check-sat)
(exit)
