(declare-fun limit_ack!1616 () (_ BitVec 64))
(declare-fun epsabs_ack!1621 () (_ BitVec 64))
(declare-fun a_ack!1622 () (_ BitVec 64))
(declare-fun x1_ack!1617 () (_ BitVec 64))
(declare-fun x2_ack!1618 () (_ BitVec 64))
(declare-fun x3_ack!1619 () (_ BitVec 64))
(declare-fun b_ack!1620 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1616)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1621)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1617) ((_ to_fp 11 53) a_ack!1622))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1618) ((_ to_fp 11 53) x1_ack!1617))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1619) ((_ to_fp 11 53) x2_ack!1618))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1620) ((_ to_fp 11 53) x3_ack!1619))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1622)
                                   ((_ to_fp 11 53) x1_ack!1617))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1617)
                                   ((_ to_fp 11 53) a_ack!1622)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1622)
                    ((_ to_fp 11 53) x1_ack!1617)))
    a!1)))

(check-sat)
(exit)
