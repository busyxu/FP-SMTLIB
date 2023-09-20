(declare-fun y1_ack!240 () (_ BitVec 64))
(declare-fun x1_ack!243 () (_ BitVec 64))
(declare-fun y2_ack!242 () (_ BitVec 64))
(declare-fun x2_ack!241 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!243))
             (fp.abs ((_ to_fp 11 53) y1_ack!240)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!243) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!241))
             (fp.abs ((_ to_fp 11 53) y2_ack!242)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!242)))
  #x7ff0000000000001))

(check-sat)
(exit)
