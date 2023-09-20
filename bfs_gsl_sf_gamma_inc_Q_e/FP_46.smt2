(declare-fun a_ack!1052 () (_ BitVec 64))
(declare-fun b_ack!1051 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1052) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1051) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1051) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1052) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1051)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                ((_ to_fp 11 53) a_ack!1052))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1052) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1051)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1052))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1052))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1051)
                                  ((_ to_fp 11 53) a_ack!1052))
                          ((_ to_fp 11 53) a_ack!1052))
                  ((_ to_fp 11 53) b_ack!1051))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1051)
                                  ((_ to_fp 11 53) a_ack!1052)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1051)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1051)
                       ((_ to_fp 11 53) a_ack!1052)))
       ((_ to_fp 11 53) a_ack!1052)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1051)
                                   ((_ to_fp 11 53) a_ack!1052)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1051)
                           ((_ to_fp 11 53) a_ack!1052)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!1051)
                         ((_ to_fp 11 53) a_ack!1052)))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!1051)
                         ((_ to_fp 11 53) a_ack!1052))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1051)
                                   ((_ to_fp 11 53) a_ack!1052)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1051)
                           ((_ to_fp 11 53) a_ack!1052)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1051)
                                   ((_ to_fp 11 53) a_ack!1052)))
                   a!1)))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1051)
                 ((_ to_fp 11 53) a_ack!1052))))))

(check-sat)
(exit)
