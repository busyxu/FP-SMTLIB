(declare-fun a_ack!237 () (_ BitVec 64))
(declare-fun b_ack!234 () (_ BitVec 64))
(declare-fun c_ack!235 () (_ BitVec 64))
(declare-fun d_ack!236 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!237) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!234) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!235) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!236)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!236) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!236))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!235)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!235)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!235)
                       ((_ to_fp 11 53) b_ack!234))
               ((_ to_fp 11 53) b_ack!234))
       ((_ to_fp 11 53) c_ack!235)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!235)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!235)
                       ((_ to_fp 11 53) b_ack!234)))
       ((_ to_fp 11 53) b_ack!234)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!235)
                                  ((_ to_fp 11 53) b_ack!234)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!235)
                       ((_ to_fp 11 53) a_ack!237))
               ((_ to_fp 11 53) a_ack!237))
       ((_ to_fp 11 53) c_ack!235)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!235)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!235)
                       ((_ to_fp 11 53) a_ack!237)))
       ((_ to_fp 11 53) a_ack!237)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!235)
                                  ((_ to_fp 11 53) a_ack!237)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!237) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!234) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!235) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!237))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!234))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!237))
            (fp.abs ((_ to_fp 11 53) b_ack!234)))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!236) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!237))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!237))
                           (fp.abs ((_ to_fp 11 53) b_ack!234)))
                   (fp.abs ((_ to_fp 11 53) d_ack!236)))))
  (fp.lt a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.abs ((_ to_fp 11 53) c_ack!235))))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!235))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FADD_OVERFLOW b_ack!234 #x0000000000000000))

(check-sat)
(exit)
