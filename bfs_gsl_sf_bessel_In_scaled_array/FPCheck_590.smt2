(declare-fun a_ack!2519 () (_ BitVec 32))
(declare-fun b_ack!2517 () (_ BitVec 32))
(declare-fun c_ack!2518 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!2517 a_ack!2519)))
(assert (not (bvslt a_ack!2519 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2518) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2517))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2518))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!2518))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!2518))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4048000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!2518)))
                   ((_ to_fp 11 53) #x4026000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c942d169d7dfa04))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!3 a!4)
    #x0000000000000000))))))

(check-sat)
(exit)
