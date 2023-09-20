(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!20)) ((_ to_fp 11 53) #x408f400000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) a_ack!20))
  (fp.abs ((_ to_fp 11 53) a_ack!20))))

(check-sat)
(exit)
