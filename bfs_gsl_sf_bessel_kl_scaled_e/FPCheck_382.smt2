(declare-fun a_ack!1438 () (_ BitVec 32))
(declare-fun b_ack!1437 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1438 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1437) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1438)))
(assert (not (= #x00000001 a_ack!1438)))
(assert (not (= #x00000002 a_ack!1438)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1437) ((_ to_fp 11 53) #x4008000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) b_ack!1437))
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    (bvadd #x00000001 (bvmul a_ack!1438 a_ack!1438) a_ack!1438)))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!1438 a_ack!1438))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!1438 a_ack!1438))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1437)
                           ((_ to_fp 11 53) b_ack!1437)))))
  (fp.lt a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!1438 a_ack!1438))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ed965fea53d6e41)))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1437) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1437) ((_ to_fp 11 53) #x1fff5de25335c4ee))))
(assert (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 b_ack!1437))

(check-sat)
(exit)
