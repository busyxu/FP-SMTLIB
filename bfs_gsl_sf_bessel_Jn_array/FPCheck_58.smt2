(declare-fun a_ack!307 () (_ BitVec 32))
(declare-fun b_ack!305 () (_ BitVec 32))
(declare-fun c_ack!306 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!307 #x00000000)))
(assert (not (bvslt b_ack!305 a_ack!307)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!305) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!305)))
(assert (not (= #x00000000 b_ack!305)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!305))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) c_ack!306)
                      ((_ to_fp 11 53) c_ack!306))
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 b_ack!305)
                            (bvadd #x00000001 b_ack!305)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) c_ack!306))
              a!1))))
(assert (bvslt #x00000032 (bvadd #x00000001 b_ack!305)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvadd #x00000001 b_ack!305))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!306)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!305))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) c_ack!306)
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvadd #x00000001 b_ack!305)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!306)
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!305)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!306)
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!305)))))

(check-sat)
(exit)
