(declare-fun a_ack!154 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt #x00000064 a_ack!154)))
(assert (not (bvsle #x00000000 a_ack!154)))
(assert (not (= #x00000000 (bvand a_ack!154 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!154)))
(assert (bvslt a_ack!154 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!154 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!154)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!154)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!154)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!154)
            ((_ to_fp 11 53) #xc033000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!154)
       ((_ to_fp 11 53) #xc065400000000000)))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!154))
                             ((_ to_fp 11 53) #x4024000000000000)))))
  (FPCHECK_FADD_ACCURACY
    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!154)
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4024000000000000)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              ((_ fp.to_sbv 32) roundTowardZero a!1))))))

(check-sat)
(exit)
