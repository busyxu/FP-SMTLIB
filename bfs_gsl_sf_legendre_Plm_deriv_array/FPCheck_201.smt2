(declare-fun b_ack!921 () (_ BitVec 32))
(declare-fun a_ack!923 () (_ BitVec 32))
(declare-fun c_ack!922 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!921 #x00000000)))
(assert (not (bvslt a_ack!923 b_ack!921)))
(assert (= #x00000000 b_ack!921))
(assert (not (bvslt a_ack!923 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!922) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!922) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!923)))
(assert (not (= #x00000001 a_ack!923)))
(assert (bvsle #x00000002 a_ack!923))
(assert (bvsle #x00000003 a_ack!923))
(assert (bvsle #x00000004 a_ack!923))
(assert (bvsle #x00000005 a_ack!923))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!922)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) c_ack!922))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!922)
                                   ((_ to_fp 11 53) #x4014000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!922)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!922)
                                   ((_ to_fp 11 53) #x401c000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!922)
                    ((_ to_fp 11 53) #x4022000000000000))
            (fp.div roundNearestTiesToEven
                    a!3
                    ((_ to_fp 11 53) #x4010000000000000)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4010000000000000)
            (fp.div roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x4008000000000000))))))))

(check-sat)
(exit)
