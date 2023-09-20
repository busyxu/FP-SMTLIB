(declare-fun limit_ack!1511 () (_ BitVec 64))
(declare-fun epsabs_ack!1516 () (_ BitVec 64))
(declare-fun a_ack!1517 () (_ BitVec 64))
(declare-fun x1_ack!1512 () (_ BitVec 64))
(declare-fun x2_ack!1513 () (_ BitVec 64))
(declare-fun x3_ack!1514 () (_ BitVec 64))
(declare-fun b_ack!1515 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1511)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1516)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1512) ((_ to_fp 11 53) a_ack!1517))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1513) ((_ to_fp 11 53) x1_ack!1512))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1514) ((_ to_fp 11 53) x2_ack!1513))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1515) ((_ to_fp 11 53) x3_ack!1514))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1517)
                                   ((_ to_fp 11 53) x1_ack!1512))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1512)
                                   ((_ to_fp 11 53) a_ack!1517)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1517)
                                   ((_ to_fp 11 53) x1_ack!1512)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
