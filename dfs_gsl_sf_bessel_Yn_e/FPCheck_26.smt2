(declare-fun a_ack!79 () (_ BitVec 32))
(declare-fun b_ack!78 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!79 #x00000000)))
(assert (= #x00000000 a_ack!79))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!78) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!78) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!78) ((_ to_fp 11 53) #x4330000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4040000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!78)
                                   ((_ to_fp 11 53) b_ack!78)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.div roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x4000000000000000)))
    #x0000000000000000))))

(check-sat)
(exit)
