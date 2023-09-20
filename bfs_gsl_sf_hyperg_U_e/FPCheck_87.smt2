(declare-fun c_ack!407 () (_ BitVec 64))
(declare-fun a_ack!408 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!406 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!408)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!408)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!406)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!408)
                    ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!408)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!408)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!406)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!406)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!407) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!408)
                               ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!406)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (bvslt a!1 a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!406)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
         (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven a!1)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!406)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
          ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!408)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
         (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven a!1)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!408)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
          ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!408)
                               ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!406)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
          ((_ to_fp 11 53) roundNearestTiesToEven a!2))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!408)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) roundNearestTiesToEven a!1))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!406)
                               ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!408)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FADD_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) roundNearestTiesToEven a!1)
            ((_ to_fp 11 53) roundNearestTiesToEven a!2))
    #x3fe0000000000000)))

(check-sat)
(exit)
