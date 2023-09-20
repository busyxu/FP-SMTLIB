(declare-fun a_ack!544 () (_ BitVec 32))
(declare-fun b_ack!542 () (_ BitVec 32))
(declare-fun c_ack!543 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!544 #x00000000)))
(assert (not (bvslt b_ack!542 a_ack!544)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!543) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!544 #x00000000)))
(assert (not (= #x00000000 a_ack!544)))
(assert (= #x00000001 a_ack!544))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!543) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!543) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!543) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!543) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc0000000000000)
                                   ((_ to_fp 11 53) c_ack!543))
                           ((_ to_fp 11 53) c_ack!543))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.div roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x4000000000000000)))
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    a!3
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #xbc4127cd0322440e)))))))

(check-sat)
(exit)
