(declare-fun a_ack!1567 () (_ BitVec 64))
(declare-fun b_ack!1564 () (_ BitVec 64))
(declare-fun c_ack!1565 () (_ BitVec 64))
(declare-fun d_ack!1566 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1567) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1564) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1565)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1565)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1565) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1565))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1567) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1564) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!1566)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1565)
                       ((_ to_fp 11 53) a_ack!1567))
               ((_ to_fp 11 53) a_ack!1567))
       ((_ to_fp 11 53) c_ack!1565)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1565)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1565)
                       ((_ to_fp 11 53) a_ack!1567)))
       ((_ to_fp 11 53) a_ack!1567)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1565)
                                  ((_ to_fp 11 53) a_ack!1567))
                          ((_ to_fp 11 53) b_ack!1564))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1566) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!1566))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1565)
                       ((_ to_fp 11 53) b_ack!1564))
               ((_ to_fp 11 53) b_ack!1564))
       ((_ to_fp 11 53) c_ack!1565)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1565)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1565)
                       ((_ to_fp 11 53) b_ack!1564)))
       ((_ to_fp 11 53) b_ack!1564)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1565)
                                  ((_ to_fp 11 53) b_ack!1564)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1565)
                                  ((_ to_fp 11 53) a_ack!1567)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1567) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1564) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1565) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) d_ack!1566) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1566) ((_ to_fp 11 53) #x3fefd70a3d70a3d7))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1567))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1564))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1566) ((_ to_fp 11 53) #xbfd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1566) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1565))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1565)
                           ((_ to_fp 11 53) a_ack!1567))
                   ((_ to_fp 11 53) b_ack!1564))))
(let ((a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               a!1
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) roundNearestTiesToEven a!2)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1565)
                                   ((_ to_fp 11 53) a_ack!1567))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1565)
                                   ((_ to_fp 11 53) a_ack!1567))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!1565)
                     ((_ to_fp 11 53) a_ack!1567))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!1565)
                    ((_ to_fp 11 53) a_ack!1567))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1565)
                       ((_ to_fp 11 53) a_ack!1567)))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3f4ff0a5d7d0b01e
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!1565)
                  ((_ to_fp 11 53) a_ack!1567))
          ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))

(check-sat)
(exit)
