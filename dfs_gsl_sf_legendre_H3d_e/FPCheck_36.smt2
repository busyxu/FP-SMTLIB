(declare-fun c_ack!244 () (_ BitVec 64))
(declare-fun a_ack!245 () (_ BitVec 32))
(declare-fun b_ack!243 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!244) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!245))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!243) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!243)
                       ((_ to_fp 11 53) c_ack!244)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!243)
                                  ((_ to_fp 11 53) c_ack!244)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!243)
                                   ((_ to_fp 11 53) c_ack!244))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!243)
                                   ((_ to_fp 11 53) c_ack!244)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!243)
                           ((_ to_fp 11 53) c_ack!244)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!243)
                 ((_ to_fp 11 53) c_ack!244)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!243)
                                  ((_ to_fp 11 53) c_ack!244)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!243)
                                   ((_ to_fp 11 53) c_ack!244))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!243)
                                   ((_ to_fp 11 53) c_ack!244)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!243)
                           ((_ to_fp 11 53) c_ack!244)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!243)
                 ((_ to_fp 11 53) c_ack!244)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!243)
                                   ((_ to_fp 11 53) c_ack!244))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!243)
                                   ((_ to_fp 11 53) c_ack!244)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!243)
                                   ((_ to_fp 11 53) c_ack!244))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!243)
                                   ((_ to_fp 11 53) c_ack!244)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!243)
                                   ((_ to_fp 11 53) c_ack!244))))))
  (FPCHECK_FMUL_OVERFLOW
    (CF_cos (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!243)
                    ((_ to_fp 11 53) c_ack!244)))
    a!1)))

(check-sat)
(exit)
