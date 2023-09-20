(declare-fun a_ack!653 () (_ BitVec 64))
(declare-fun b_ack!650 () (_ BitVec 64))
(declare-fun c_ack!651 () (_ BitVec 64))
(declare-fun d_ack!652 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!653) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!650) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!651) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!652)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!652) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!652))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!651)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!651)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!651)
                       ((_ to_fp 11 53) b_ack!650))
               ((_ to_fp 11 53) b_ack!650))
       ((_ to_fp 11 53) c_ack!651)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!651)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!651)
                       ((_ to_fp 11 53) b_ack!650)))
       ((_ to_fp 11 53) b_ack!650)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!651)
                                  ((_ to_fp 11 53) b_ack!650)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!651)
                       ((_ to_fp 11 53) a_ack!653))
               ((_ to_fp 11 53) a_ack!653))
       ((_ to_fp 11 53) c_ack!651)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!651)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!651)
                       ((_ to_fp 11 53) a_ack!653)))
       ((_ to_fp 11 53) a_ack!653)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!651)
                                  ((_ to_fp 11 53) a_ack!653)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!653) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!650) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!651) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!653))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!650))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!653))
            (fp.abs ((_ to_fp 11 53) b_ack!650)))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!652) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!653))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!650)))
                   (fp.abs ((_ to_fp 11 53) d_ack!652)))))
(let ((a!2 (fp.lt a!1
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4000000000000000)
                          (fp.abs ((_ to_fp 11 53) c_ack!651))))))
  (not a!2))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!650)
                                  ((_ to_fp 11 53) b_ack!650)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!650)
                                   ((_ to_fp 11 53) b_ack!650))
                           ((_ to_fp 11 53) d_ack!652))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!650)
                           ((_ to_fp 11 53) b_ack!650)))))
  (fp.eq a!1 ((_ to_fp 11 53) d_ack!652))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) d_ack!652))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!650)
                                   ((_ to_fp 11 53) b_ack!650))
                           ((_ to_fp 11 53) d_ack!652))
                   ((_ to_fp 11 53) d_ack!652))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!650)
                 ((_ to_fp 11 53) b_ack!650)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!650)
                                   ((_ to_fp 11 53) b_ack!650))
                           ((_ to_fp 11 53) d_ack!652))
                   ((_ to_fp 11 53) d_ack!652))))
  (fp.lt (fp.abs a!1)
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3f50624dd2f1a9fc)
                 (fp.abs ((_ to_fp 11 53) b_ack!650))))))

(check-sat)
(exit)
