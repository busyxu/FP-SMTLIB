(declare-fun a_ack!2677 () (_ BitVec 64))
(declare-fun b_ack!2676 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2676))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!2677))))))
  (not a!1)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!2677))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!2676)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!2676))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2677))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.abs ((_ to_fp 11 53) b_ack!2676)))
         (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2677))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2677))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!2676))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2677))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2677))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) b_ack!2676))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!2676))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2677))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2676) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2677) ((_ to_fp 11 53) #xbfe0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!2677))
               ((_ to_fp 11 53) a_ack!2677))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!2677)))
       ((_ to_fp 11 53) a_ack!2677)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!2677))
                           ((_ to_fp 11 53) b_ack!2676))
                   ((_ to_fp 11 53) b_ack!2676))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 ((_ to_fp 11 53) a_ack!2677)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!2677))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!2677))
                           ((_ to_fp 11 53) b_ack!2676)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!2676))))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!2677))
                          ((_ to_fp 11 53) b_ack!2676))
                  ((_ to_fp 11 53) #x4024000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!2677))
          ((_ to_fp 11 53) b_ack!2676))
  #x0000000000000000))

(check-sat)
(exit)
