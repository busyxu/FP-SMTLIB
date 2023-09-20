(declare-fun b_ack!2225 () (_ BitVec 64))
(declare-fun a_ack!2226 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2226) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!2225))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2225)
                       ((_ to_fp 11 53) b_ack!2225))
               ((_ to_fp 11 53) b_ack!2225))
       ((_ to_fp 11 53) b_ack!2225)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!2225))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2225)
                       ((_ to_fp 11 53) b_ack!2225))
               ((_ to_fp 11 53) b_ack!2225))
       ((_ to_fp 11 53) b_ack!2225)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2226))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!2226)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2226))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) a_ack!2226)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2226))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!2225)
                 ((_ to_fp 11 53) b_ack!2225))
         a!1)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) a_ack!2226))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) a_ack!2226))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) a_ack!2226))
       ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) a_ack!2226))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) a_ack!2226))
                 ((_ to_fp 11 53)
                   roundNearestTiesToEven
                   ((_ fp.to_sbv 32) roundTowardZero a!1)))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) b_ack!2225))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) a_ack!2226))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (bvslt ((_ fp.to_sbv 32) roundTowardZero a!1) #x00000000))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) a_ack!2226))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (= #x00000000 ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) a_ack!2226))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (= #x00000001 ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) b_ack!2225))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) a_ack!2226))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      ((_ fp.to_sbv 32) roundTowardZero a!1))
    #x3fe0000000000000)))

(check-sat)
(exit)
