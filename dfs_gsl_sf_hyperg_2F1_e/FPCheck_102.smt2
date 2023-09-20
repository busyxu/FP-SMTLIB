(declare-fun a_ack!605 () (_ BitVec 64))
(declare-fun b_ack!602 () (_ BitVec 64))
(declare-fun c_ack!603 () (_ BitVec 64))
(declare-fun d_ack!604 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!605) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!602) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!603) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!604)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!604) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!604))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!603)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!603)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!603)
                       ((_ to_fp 11 53) b_ack!602))
               ((_ to_fp 11 53) b_ack!602))
       ((_ to_fp 11 53) c_ack!603)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!603)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!603)
                       ((_ to_fp 11 53) b_ack!602)))
       ((_ to_fp 11 53) b_ack!602)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!603)
                                  ((_ to_fp 11 53) b_ack!602)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!603)
                       ((_ to_fp 11 53) a_ack!605))
               ((_ to_fp 11 53) a_ack!605))
       ((_ to_fp 11 53) c_ack!603)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!603)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!603)
                       ((_ to_fp 11 53) a_ack!605)))
       ((_ to_fp 11 53) a_ack!605)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!603)
                                  ((_ to_fp 11 53) a_ack!605)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!605) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!602) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!603) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!605))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!602))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!605))
            (fp.abs ((_ to_fp 11 53) b_ack!602)))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!604) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!605))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!602)))
                   (fp.abs ((_ to_fp 11 53) d_ack!604)))))
(let ((a!2 (fp.lt a!1
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4000000000000000)
                          (fp.abs ((_ to_fp 11 53) c_ack!603))))))
  (not a!2))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!602)
                                  ((_ to_fp 11 53) b_ack!602)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!602)
                                   ((_ to_fp 11 53) b_ack!602))
                           ((_ to_fp 11 53) d_ack!604))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!602)
                           ((_ to_fp 11 53) b_ack!602)))))
  (fp.eq a!1 ((_ to_fp 11 53) d_ack!604))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) d_ack!604))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!602)
                                   ((_ to_fp 11 53) b_ack!602))
                           ((_ to_fp 11 53) d_ack!604))
                   ((_ to_fp 11 53) d_ack!604))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!602)
                 ((_ to_fp 11 53) b_ack!602)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!602)
                  ((_ to_fp 11 53) b_ack!602))
          ((_ to_fp 11 53) d_ack!604))
  d_ack!604))

(check-sat)
(exit)
