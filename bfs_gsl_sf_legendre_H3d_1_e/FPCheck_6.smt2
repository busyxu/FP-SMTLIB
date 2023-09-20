(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun a_ack!16 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!16)
          ((_ to_fp 11 53) a_ack!16))
  #x3ff0000000000000))

(check-sat)
(exit)
