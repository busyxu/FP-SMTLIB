(declare-fun a_ack!568 () (_ BitVec 64))
(declare-fun b_ack!567 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!568) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!567) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!567) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!567) ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!568) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!567)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!568))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!567)
                                   ((_ to_fp 11 53) a_ack!568)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!567)
                           ((_ to_fp 11 53) a_ack!568)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!567)
                         ((_ to_fp 11 53) a_ack!568)))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!567)
                         ((_ to_fp 11 53) a_ack!568))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!567)
                                   ((_ to_fp 11 53) a_ack!568)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!567)
                           ((_ to_fp 11 53) a_ack!568)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!567)
                                   ((_ to_fp 11 53) a_ack!568)))
                   a!1)))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!567)
                 ((_ to_fp 11 53) a_ack!568))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!567)
                                   ((_ to_fp 11 53) a_ack!568))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!567)
                                   ((_ to_fp 11 53) a_ack!568))))))
  (FPCHECK_FADD_OVERFLOW a!2 #x3ff0000000000000))))

(check-sat)
(exit)
