(declare-fun a_ack!342 () (_ BitVec 32))
(declare-fun b_ack!341 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!342 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!342)))
(assert (not (= #x00000001 a_ack!342)))
(assert (bvsle #x00000002 a_ack!342))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!341))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!341))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!341))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!341))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (FPCHECK_FINVALID_LOG
    (fp.abs (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
    (fp.abs (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))

(check-sat)
(exit)
