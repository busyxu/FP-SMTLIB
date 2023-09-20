(declare-fun a_ack!301 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!301) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!301) ((_ to_fp 11 53) #x402e000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x402e000000000000)
          ((_ to_fp 11 53) a_ack!301))
  #x3ff0000000000000))

(check-sat)
(exit)
