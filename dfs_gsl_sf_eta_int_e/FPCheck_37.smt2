(declare-fun a_ack!87 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt #x00000064 a_ack!87)))
(assert (not (bvsle #x00000000 a_ack!87)))
(assert (not (= #x00000000 (bvand a_ack!87 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!87)))
(assert (bvslt a_ack!87 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!87 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!87)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!87)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!87)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!87)
            ((_ to_fp 11 53) #xc033000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!87))))

(check-sat)
(exit)
