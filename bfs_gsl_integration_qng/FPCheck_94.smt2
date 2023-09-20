(declare-fun a_ack!535 () (_ BitVec 64))
(declare-fun b_ack!533 () (_ BitVec 64))
(declare-fun epsabs_ack!534 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!533)
                                   ((_ to_fp 11 53) a_ack!535))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!534)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!533)
                                   ((_ to_fp 11 53) a_ack!535)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!533)
                                   ((_ to_fp 11 53) a_ack!535)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
