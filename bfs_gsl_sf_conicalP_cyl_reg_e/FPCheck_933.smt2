(declare-fun c_ack!4002 () (_ BitVec 64))
(declare-fun a_ack!4003 () (_ BitVec 32))
(declare-fun b_ack!4001 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4002) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!4003 #xffffffff)))
(assert (not (= #xffffffff a_ack!4003)))
(assert (= #x00000000 a_ack!4003))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4002) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4002) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4001) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4002) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4001) ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4002)
                                   ((_ to_fp 11 53) c_ack!4002)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4002)
                       ((_ to_fp 11 53) c_ack!4002)))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe0000000000000)
                       ((_ to_fp 11 53) b_ack!4001)))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4001))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4001))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3fe0000000000000))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4002)
                    ((_ to_fp 11 53) c_ack!4002))))))

(check-sat)
(exit)
