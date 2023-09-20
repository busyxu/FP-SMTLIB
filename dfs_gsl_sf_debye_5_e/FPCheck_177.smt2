(declare-fun a_ack!276 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!276) ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4014000000000000)
          ((_ to_fp 11 53) a_ack!276))
  #x4028000000000000))

(check-sat)
(exit)
