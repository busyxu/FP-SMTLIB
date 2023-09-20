(declare-fun b_ack!2866 () (_ BitVec 64))
(declare-fun a_ack!2867 () (_ BitVec 64))
(declare-fun CF_atan2
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!2866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!2867))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!2867)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2866))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2866))))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (CF_atan2 (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) b_ack!2866))
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3ff0000000000000)
                                     ((_ to_fp 11 53) a_ack!2867))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (CF_atan2 (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) #x8000000000000000)
                             ((_ to_fp 11 53) b_ack!2866))
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3ff0000000000000)
                             ((_ to_fp 11 53) a_ack!2867)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (CF_atan2 (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) b_ack!2866))
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3ff0000000000000)
                                     ((_ to_fp 11 53) a_ack!2867))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (CF_atan2 (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) #x8000000000000000)
                             ((_ to_fp 11 53) b_ack!2866))
                     (fp.sub roundNearestTiesToEven
                             ((_ to_fp 11 53) #x3ff0000000000000)
                             ((_ to_fp 11 53) a_ack!2867)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (CF_atan2 (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x8000000000000000)
                                     ((_ to_fp 11 53) b_ack!2866))
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) #x3ff0000000000000)
                                     ((_ to_fp 11 53) a_ack!2867))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x400921fb54442d18) a!1)
    #x4000000000000000)))

(check-sat)
(exit)
