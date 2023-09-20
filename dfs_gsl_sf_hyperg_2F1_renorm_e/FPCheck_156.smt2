(declare-fun a_ack!731 () (_ BitVec 64))
(declare-fun b_ack!728 () (_ BitVec 64))
(declare-fun c_ack!729 () (_ BitVec 64))
(declare-fun d_ack!730 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!731) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!728) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!729) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!729)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!729)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!729) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!729) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!729))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!731) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!728) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!729) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!730)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!729)
                       ((_ to_fp 11 53) a_ack!731))
               ((_ to_fp 11 53) a_ack!731))
       ((_ to_fp 11 53) c_ack!729)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!729)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!729)
                       ((_ to_fp 11 53) a_ack!731)))
       ((_ to_fp 11 53) a_ack!731)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!729)
                                  ((_ to_fp 11 53) a_ack!731))
                          ((_ to_fp 11 53) b_ack!728))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!730) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!730))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!729)
                       ((_ to_fp 11 53) b_ack!728))
               ((_ to_fp 11 53) b_ack!728))
       ((_ to_fp 11 53) c_ack!729)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!729)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!729)
                       ((_ to_fp 11 53) b_ack!728)))
       ((_ to_fp 11 53) b_ack!728)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!729)
                       ((_ to_fp 11 53) b_ack!728)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!730))
            ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!729)
                                   ((_ to_fp 11 53) a_ack!731))
                           ((_ to_fp 11 53) b_ack!728)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!729)
                           ((_ to_fp 11 53) a_ack!731))
                   ((_ to_fp 11 53) b_ack!728))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) d_ack!730))))))
  (fp.eq (fp.div roundNearestTiesToEven a!2 a!1)
         (CF_log (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         ((_ to_fp 11 53) d_ack!730)))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) d_ack!730))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!729)
                           ((_ to_fp 11 53) a_ack!731))
                   ((_ to_fp 11 53) b_ack!728))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) d_ack!730))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) d_ack!730))))))
  (fp.eq a!3 a!1)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!729)
                                   ((_ to_fp 11 53) a_ack!731))
                           ((_ to_fp 11 53) b_ack!728))
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) d_ack!730))))))
  (FPCHECK_FMUL_OVERFLOW #x3cb0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
