(declare-fun a_ack!53 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!53)) ((_ to_fp 11 53) #x4190000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (CF_log (fp.abs ((_ to_fp 11 53) a_ack!53)))
  #x3fe62e42fefa39ef))

(check-sat)
(exit)
