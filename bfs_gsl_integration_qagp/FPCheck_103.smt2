(declare-fun limit_ack!1651 () (_ BitVec 64))
(declare-fun epsabs_ack!1656 () (_ BitVec 64))
(declare-fun a_ack!1657 () (_ BitVec 64))
(declare-fun x1_ack!1652 () (_ BitVec 64))
(declare-fun x2_ack!1653 () (_ BitVec 64))
(declare-fun x3_ack!1654 () (_ BitVec 64))
(declare-fun b_ack!1655 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1651)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1656)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1652) ((_ to_fp 11 53) a_ack!1657))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1653) ((_ to_fp 11 53) x1_ack!1652))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1654) ((_ to_fp 11 53) x2_ack!1653))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1655) ((_ to_fp 11 53) x3_ack!1654))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1657)
                                   ((_ to_fp 11 53) x1_ack!1652))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1652)
                                   ((_ to_fp 11 53) a_ack!1657)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1657)
                                   ((_ to_fp 11 53) x1_ack!1652)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
