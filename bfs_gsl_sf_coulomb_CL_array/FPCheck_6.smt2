(declare-fun a_ack!23 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!22 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!23))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  c_ack!22
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!23)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
