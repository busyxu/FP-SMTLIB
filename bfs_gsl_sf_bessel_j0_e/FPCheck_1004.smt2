(declare-fun a_ack!1501 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1501))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!1501))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  (CF_sin (fp.abs ((_ to_fp 11 53) a_ack!1501)))
  (CF_cos (fp.abs ((_ to_fp 11 53) a_ack!1501)))))

(check-sat)
(exit)
