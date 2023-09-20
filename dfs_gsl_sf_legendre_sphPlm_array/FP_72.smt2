(declare-fun b_ack!1347 () (_ BitVec 32))
(declare-fun a_ack!1349 () (_ BitVec 32))
(declare-fun c_ack!1348 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!1347 #x00000000)))
(assert (not (bvslt a_ack!1349 b_ack!1347)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1348) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1348) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000000 b_ack!1347))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1348) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1348) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1347)))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1348))
                           ((_ to_fp 11 53) c_ack!1348))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1348))
                           ((_ to_fp 11 53) c_ack!1348)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347)
                     ((_ to_fp 11 53) #x3fe0000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) #x3fe0000000000000)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347))))
(assert (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347)
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347)
               ((_ to_fp 11 53) #x3fe0000000000000))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347)
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347)
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347)
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347)
       (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1347))))
(assert (let ((a!1 (bvadd #xffffffff
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (CF_floor ((_ to_fp 11 53)
                                roundNearestTiesToEven
                                b_ack!1347))))))
  (bvult #x0000000000000000
         (bvadd #x0000000000000008
                (bvmul #x0000000000000018 ((_ sign_extend 32) a!1))))))
(assert (let ((a!1 (bvadd #xffffffff
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (CF_floor ((_ to_fp 11 53)
                                roundNearestTiesToEven
                                b_ack!1347))))))
  (bvult (bvadd #x0000000000000008
                (bvmul #x0000000000000018 ((_ sign_extend 32) a!1)))
         #x0000000000001001)))

(check-sat)
(exit)
