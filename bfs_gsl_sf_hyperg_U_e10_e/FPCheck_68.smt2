(declare-fun c_ack!329 () (_ BitVec 64))
(declare-fun a_ack!330 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!328 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!330) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!330)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!330)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!328)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!330)
                    ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!330)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!330)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!328)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!328)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!329) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!330)
                               ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!328)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (bvslt a!1 a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!328)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
         (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven a!1)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!328)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
          ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!330)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
         (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven a!1)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!330)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
          ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!330)
                               ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!328)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
          ((_ to_fp 11 53) roundNearestTiesToEven a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!330)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FADD_UNDERFLOW
    #x3ff0000000000000
    ((_ to_fp 11 53) roundNearestTiesToEven a!1))))

(check-sat)
(exit)
