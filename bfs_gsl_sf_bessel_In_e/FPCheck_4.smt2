(declare-fun b_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!4)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!4)))))

(check-sat)
(exit)
