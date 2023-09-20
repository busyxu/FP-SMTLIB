(declare-fun a_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!31)
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd))))

(check-sat)
(exit)
