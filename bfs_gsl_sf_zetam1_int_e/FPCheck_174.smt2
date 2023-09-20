(declare-fun a_ack!266 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt a_ack!266 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!266 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!266)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!266)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!266)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!266)
            ((_ to_fp 11 53) #xc033000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!266)))

(check-sat)
(exit)
