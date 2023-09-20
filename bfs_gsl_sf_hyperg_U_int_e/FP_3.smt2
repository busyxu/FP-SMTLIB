(declare-fun c_ack!160 () (_ BitVec 64))
(declare-fun b_ack!159 () (_ BitVec 32))
(declare-fun a_ack!161 () (_ BitVec 32))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) c_ack!160) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!159)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!160) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!161))
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!159))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!161))
                          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!159))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!161))
                          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!159))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) roundNearestTiesToEven a_ack!161))
                ((_ to_fp 11 53) roundNearestTiesToEven b_ack!159))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!161))
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!159))))
  (fp.eq a!1 (CF_floor a!1))))
(assert (let ((a!1 (CF_floor (fp.sub roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3ff0000000000000)
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!161))
                             ((_ to_fp 11 53) roundNearestTiesToEven b_ack!159)))))
(let ((a!2 (bvmul #x0000000000000018
                  ((_ sign_extend 32)
                    (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (bvult #x0000000000000000 (bvadd #x0000000000000008 a!2)))))
(assert (let ((a!1 (CF_floor (fp.sub roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3ff0000000000000)
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!161))
                             ((_ to_fp 11 53) roundNearestTiesToEven b_ack!159)))))
(let ((a!2 (bvmul #x0000000000000018
                  ((_ sign_extend 32)
                    (bvadd #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))))
  (bvult (bvadd #x0000000000000008 a!2) #x0000000000001001))))

(check-sat)
(exit)
