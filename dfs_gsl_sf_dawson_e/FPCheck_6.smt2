(declare-fun a_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!17))
            ((_ to_fp 11 53) #x3e5399999999999a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!17))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!17))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!17)) ((_ to_fp 11 53) #x4186a09e667f3bcc)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!17))
  (fp.abs ((_ to_fp 11 53) a_ack!17))))

(check-sat)
(exit)
