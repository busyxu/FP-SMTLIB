(declare-fun a_ack!1184 () (_ BitVec 32))
(declare-fun b_ack!1183 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1184 #x00000000)))
(assert (not (= #x00000000 a_ack!1184)))
(assert (not (= #x00000001 a_ack!1184)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1183) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1183) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) b_ack!1183))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!1184 a_ack!1184))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!1184))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1183) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1184)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1183)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1184))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1183)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1184))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1183)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1184))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1183)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1184)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1183)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1184))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1183)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1184)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1183)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1184))
       ((_ to_fp 11 53) #x3fef5c28f5c28f5c)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1183)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1184))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1183)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1184))))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
