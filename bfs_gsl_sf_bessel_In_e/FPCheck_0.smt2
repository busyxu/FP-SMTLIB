(declare-fun b_ack!0 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!0)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!0)))))

(check-sat)
(exit)
