(declare-fun a_ack!492 () (_ BitVec 32))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt a_ack!492 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!492 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!492)))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!492)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!492)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!492)
            ((_ to_fp 11 53) #xc033000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!492)
       ((_ to_fp 11 53) #xc065400000000000)))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!492))
                             ((_ to_fp 11 53) #x4024000000000000)))))
  (bvult #x0000000000000000
         (bvmul #x0000000000000008
                ((_ sign_extend 32) ((_ fp.to_sbv 32) roundTowardZero a!1))))))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!492))
                             ((_ to_fp 11 53) #x4024000000000000)))))
  (bvult (bvmul #x0000000000000008
                ((_ sign_extend 32) ((_ fp.to_sbv 32) roundTowardZero a!1)))
         #x0000000000000089)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!492))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!492))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!492))
             ((_ to_fp 11 53) #x4065600000000000))))

(check-sat)
(exit)
