(declare-fun c_ack!3240 () (_ BitVec 64))
(declare-fun a_ack!3241 () (_ BitVec 64))
(declare-fun b_ack!3239 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!3240) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3241) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3241)
                    ((_ to_fp 11 53) b_ack!3239))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3240) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3241) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!3239) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3241)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) a_ack!3241))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3241)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!3241)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3241) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!3239))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3241)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3240)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3240) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) c_ack!3240))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3241)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3239))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3241)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!3241)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3241) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x3ff0000000000000)
                ((_ to_fp 11 53) b_ack!3239))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!3241)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!3240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!3241))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!3239)))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3240) ((_ to_fp 11 53) #xbfd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3240) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!3241)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x4024000000000000))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3241)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) a_ack!3241))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!3239))))

(check-sat)
(exit)
