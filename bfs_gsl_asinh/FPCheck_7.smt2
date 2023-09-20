(declare-fun a_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!11))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!11)) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!11))
  (fp.abs ((_ to_fp 11 53) a_ack!11))))

(check-sat)
(exit)
