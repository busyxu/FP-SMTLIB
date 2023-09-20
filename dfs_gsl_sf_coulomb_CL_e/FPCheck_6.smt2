(declare-fun a_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!20 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!21) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!21))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  b_ack!20
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!21)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
