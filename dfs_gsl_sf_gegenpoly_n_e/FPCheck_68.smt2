(declare-fun b_ack!355 () (_ BitVec 64))
(declare-fun a_ack!357 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!356 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!355) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!357 #x00000000)))
(assert (not (= #x00000000 a_ack!357)))
(assert (not (= #x00000001 a_ack!357)))
(assert (not (= #x00000002 a_ack!357)))
(assert (= #x00000003 a_ack!357))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!355) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!355)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!355))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x4010000000000000) a!1)
    c_ack!356)))

(check-sat)
(exit)
