(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!383 () (_ BitVec 64))
(declare-fun b_ack!381 () (_ BitVec 64))
(declare-fun c_ack!382 () (_ BitVec 64))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!383)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!383)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!381)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!381)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!381)
                                     ((_ to_fp 11 53) a_ack!383))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!381)
                                   ((_ to_fp 11 53) a_ack!383))
                           a!1))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3d19000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!381) ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!383) ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!381)
                    ((_ to_fp 11 53) a_ack!383))
            ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!382) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
