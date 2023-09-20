(declare-fun limit_ack!1630 () (_ BitVec 64))
(declare-fun epsabs_ack!1635 () (_ BitVec 64))
(declare-fun a_ack!1636 () (_ BitVec 64))
(declare-fun x1_ack!1631 () (_ BitVec 64))
(declare-fun x2_ack!1632 () (_ BitVec 64))
(declare-fun x3_ack!1633 () (_ BitVec 64))
(declare-fun b_ack!1634 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1630)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1635)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1631) ((_ to_fp 11 53) a_ack!1636))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1632) ((_ to_fp 11 53) x1_ack!1631))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1633) ((_ to_fp 11 53) x2_ack!1632))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1634) ((_ to_fp 11 53) x3_ack!1633))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1636)
                                   ((_ to_fp 11 53) x1_ack!1631))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1631)
                                   ((_ to_fp 11 53) a_ack!1636)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1636)
                    ((_ to_fp 11 53) x1_ack!1631)))
    a!1)))

(check-sat)
(exit)
