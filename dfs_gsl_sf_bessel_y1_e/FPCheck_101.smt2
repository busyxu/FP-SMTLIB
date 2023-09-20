(declare-fun a_ack!141 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fc0000000000000)
                  ((_ to_fp 11 53) a_ack!141))
          ((_ to_fp 11 53) a_ack!141))
  #x3ff0000000000000))

(check-sat)
(exit)
