(declare-fun limit_ack!1322 () (_ BitVec 64))
(declare-fun epsabs_ack!1327 () (_ BitVec 64))
(declare-fun epsrel_ack!1321 () (_ BitVec 64))
(declare-fun a_ack!1328 () (_ BitVec 64))
(declare-fun x1_ack!1323 () (_ BitVec 64))
(declare-fun x2_ack!1324 () (_ BitVec 64))
(declare-fun x3_ack!1325 () (_ BitVec 64))
(declare-fun b_ack!1326 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1322)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1327) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1321)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1321)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1323) ((_ to_fp 11 53) a_ack!1328))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1324) ((_ to_fp 11 53) x1_ack!1323))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1325) ((_ to_fp 11 53) x2_ack!1324))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1326) ((_ to_fp 11 53) x3_ack!1325))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1328)
                                   ((_ to_fp 11 53) x1_ack!1323))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1323)
                                   ((_ to_fp 11 53) a_ack!1328)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1328)
                    ((_ to_fp 11 53) x1_ack!1323)))
    a!1)))

(check-sat)
(exit)
