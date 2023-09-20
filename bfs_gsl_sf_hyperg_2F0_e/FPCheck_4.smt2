(declare-fun c_ack!8 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) c_ack!8) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FINVALID_POW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #xbff0000000000000)
          ((_ to_fp 11 53) c_ack!8))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #xbff0000000000000)
          ((_ to_fp 11 53) c_ack!8))))

(check-sat)
(exit)
