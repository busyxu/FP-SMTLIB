(declare-fun b_ack!1532 () (_ BitVec 64))
(declare-fun a_ack!1534 () (_ BitVec 32))
(declare-fun c_ack!1533 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1532) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1534 #x00000000)))
(assert (not (= #x00000000 a_ack!1534)))
(assert (not (= #x00000001 a_ack!1534)))
(assert (not (= #x00000002 a_ack!1534)))
(assert (not (= #x00000003 a_ack!1534)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1532) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1533) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1532) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1532) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) c_ack!1533))
                           ((_ to_fp 11 53) c_ack!1533)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1533)
                                   a!1)))))
  (FPCHECK_FADD_ACCURACY a!2 (fp.abs ((_ to_fp 11 53) c_ack!1533))))))

(check-sat)
(exit)
