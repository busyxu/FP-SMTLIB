(declare-fun limit_ack!1546 () (_ BitVec 64))
(declare-fun epsabs_ack!1551 () (_ BitVec 64))
(declare-fun epsrel_ack!1545 () (_ BitVec 64))
(declare-fun a_ack!1552 () (_ BitVec 64))
(declare-fun x1_ack!1547 () (_ BitVec 64))
(declare-fun x2_ack!1548 () (_ BitVec 64))
(declare-fun x3_ack!1549 () (_ BitVec 64))
(declare-fun b_ack!1550 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1546)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1551) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1545)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1545)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1547) ((_ to_fp 11 53) a_ack!1552))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1548) ((_ to_fp 11 53) x1_ack!1547))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1549) ((_ to_fp 11 53) x2_ack!1548))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1550) ((_ to_fp 11 53) x3_ack!1549))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1552)
                                   ((_ to_fp 11 53) x1_ack!1547))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1547)
                                   ((_ to_fp 11 53) a_ack!1552)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1552)
                    ((_ to_fp 11 53) x1_ack!1547)))
    a!1)))

(check-sat)
(exit)
