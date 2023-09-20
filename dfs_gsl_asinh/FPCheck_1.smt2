(declare-fun a_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!2))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!2))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!2)) ((_ to_fp 11 53) #x3e50000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!2))
  (fp.abs ((_ to_fp 11 53) a_ack!2))))

(check-sat)
(exit)
