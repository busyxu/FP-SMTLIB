(declare-fun c_ack!346 () (_ BitVec 64))
(declare-fun a_ack!347 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.lt ((_ to_fp 11 53) c_ack!346) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    ((_ to_fp 11 53) c_ack!346))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    ((_ to_fp 11 53) c_ack!346))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!347)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!347)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!347)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!347)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))

(check-sat)
(exit)
