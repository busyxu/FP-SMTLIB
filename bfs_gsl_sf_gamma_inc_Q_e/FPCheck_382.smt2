(declare-fun a_ack!1064 () (_ BitVec 64))
(declare-fun b_ack!1063 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1064) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1063) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1063) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1064) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1063)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                ((_ to_fp 11 53) a_ack!1064))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1064) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1063)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1064))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1064))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1063)
                                  ((_ to_fp 11 53) a_ack!1064))
                          ((_ to_fp 11 53) a_ack!1064))
                  ((_ to_fp 11 53) b_ack!1063))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1063)
                                  ((_ to_fp 11 53) a_ack!1064)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1063)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1063)
                       ((_ to_fp 11 53) a_ack!1064)))
       ((_ to_fp 11 53) a_ack!1064)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1063)
                                   ((_ to_fp 11 53) a_ack!1064)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1063)
                           ((_ to_fp 11 53) a_ack!1064)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!1063)
                         ((_ to_fp 11 53) a_ack!1064)))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!1063)
                         ((_ to_fp 11 53) a_ack!1064))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1063)
                                   ((_ to_fp 11 53) a_ack!1064)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1063)
                           ((_ to_fp 11 53) a_ack!1064)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1063)
                                   ((_ to_fp 11 53) a_ack!1064)))
                   a!1)))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1063)
                 ((_ to_fp 11 53) a_ack!1064))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1063)
                                   ((_ to_fp 11 53) a_ack!1064))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.abs (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1063)
                    ((_ to_fp 11 53) a_ack!1064))))))

(check-sat)
(exit)
