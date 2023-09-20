(declare-fun b_ack!39 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!39)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!39))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (FPCHECK_FMUL_UNDERFLOW (fp.abs ((_ to_fp 11 53) b_ack!39)) #x3cb0000000000000))

(check-sat)
(exit)
