(declare-fun a_ack!974 () (_ BitVec 32))
(declare-fun b_ack!973 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!974 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!973) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!974)))
(assert (not (= #x00000001 a_ack!974)))
(assert (not (= #x00000002 a_ack!974)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!973) ((_ to_fp 11 53) #x4008000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) b_ack!973))
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    (bvadd #x00000001 (bvmul a_ack!974 a_ack!974) a_ack!974)))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!974 a_ack!974))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!974 a_ack!974))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!973)
                           ((_ to_fp 11 53) b_ack!973)))))
  (fp.lt a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!974 a_ack!974))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3ed965fea53d6e41))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!973)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!974)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4003a966ce565874))))
  (FPCHECK_FADD_OVERFLOW #x3ff752cd9cacb0e7 (CF_log a!1))))

(check-sat)
(exit)
