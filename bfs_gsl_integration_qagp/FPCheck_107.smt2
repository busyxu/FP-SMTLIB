(declare-fun limit_ack!1721 () (_ BitVec 64))
(declare-fun epsabs_ack!1726 () (_ BitVec 64))
(declare-fun a_ack!1727 () (_ BitVec 64))
(declare-fun x1_ack!1722 () (_ BitVec 64))
(declare-fun x2_ack!1723 () (_ BitVec 64))
(declare-fun x3_ack!1724 () (_ BitVec 64))
(declare-fun b_ack!1725 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1721)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1726)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1722) ((_ to_fp 11 53) a_ack!1727))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1723) ((_ to_fp 11 53) x1_ack!1722))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1724) ((_ to_fp 11 53) x2_ack!1723))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1725) ((_ to_fp 11 53) x3_ack!1724))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) x1_ack!1722))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1722)
                                   ((_ to_fp 11 53) a_ack!1727)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) x1_ack!1722)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
