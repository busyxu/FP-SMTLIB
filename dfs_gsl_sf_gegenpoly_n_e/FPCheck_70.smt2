(declare-fun b_ack!369 () (_ BitVec 64))
(declare-fun a_ack!371 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!370 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!369) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!371 #x00000000)))
(assert (not (= #x00000000 a_ack!371)))
(assert (not (= #x00000001 a_ack!371)))
(assert (not (= #x00000002 a_ack!371)))
(assert (= #x00000003 a_ack!371))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!369)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!369))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4010000000000000)
                    a!1)
            ((_ to_fp 11 53) c_ack!370))
    c_ack!370)))

(check-sat)
(exit)
