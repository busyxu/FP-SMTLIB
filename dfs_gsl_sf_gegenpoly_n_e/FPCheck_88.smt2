(declare-fun b_ack!481 () (_ BitVec 64))
(declare-fun a_ack!483 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!482 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!481) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!483 #x00000000)))
(assert (not (= #x00000000 a_ack!483)))
(assert (not (= #x00000001 a_ack!483)))
(assert (not (= #x00000002 a_ack!483)))
(assert (= #x00000003 a_ack!483))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!481) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!481)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!481))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   a!1)
                           ((_ to_fp 11 53) c_ack!482))
                   ((_ to_fp 11 53) c_ack!482))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!481))
                           ((_ to_fp 11 53) c_ack!482))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) b_ack!481))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.abs a!3))
    (fp.abs (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!481)
                    ((_ to_fp 11 53) c_ack!482))))))))

(check-sat)
(exit)
