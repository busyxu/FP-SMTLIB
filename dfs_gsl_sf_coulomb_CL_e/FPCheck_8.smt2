(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!28 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!29) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!29))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  b_ack!28
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!29)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
