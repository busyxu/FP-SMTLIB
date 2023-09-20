(declare-fun b_ack!343 () (_ BitVec 64))
(declare-fun a_ack!345 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!344 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!343) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!345 #x00000000)))
(assert (not (= #x00000000 a_ack!345)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!343) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000002 a_ack!345))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!343))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!343)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) c_ack!344))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!343))
                           ((_ to_fp 11 53) c_ack!344)))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            a!2
            (fp.mul roundNearestTiesToEven
                    a!3
                    ((_ to_fp 11 53) #x3ff0000000000000)))
    #x4000000000000000))))

(check-sat)
(exit)
