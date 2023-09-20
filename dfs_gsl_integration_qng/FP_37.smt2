(declare-fun a_ack!1487 () (_ BitVec 64))
(declare-fun b_ack!1484 () (_ BitVec 64))
(declare-fun epsabs_ack!1485 () (_ BitVec 64))
(declare-fun epsrel_ack!1486 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1484)
                                   ((_ to_fp 11 53) a_ack!1487))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1485) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1486)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1486)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))

(check-sat)
(exit)
