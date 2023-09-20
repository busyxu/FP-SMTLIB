(declare-fun a_ack!3710 () (_ BitVec 32))
(declare-fun b_ack!3708 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!3709 () (_ BitVec 64))
(assert (not (bvslt a_ack!3710 #x00000000)))
(assert (not (bvslt b_ack!3708 #x00000000)))
(assert (not (= #x00000000 a_ack!3710)))
(assert (not (= #x00000001 a_ack!3710)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3708 a_ack!3710)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3708)))
(assert (bvslt b_ack!3708 a_ack!3710))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3710 b_ack!3708) #x00000001))))
(assert (bvslt b_ack!3708 (bvsub a_ack!3710 b_ack!3708)))
(assert (not (bvslt #x00000000 b_ack!3708)))
(assert (bvsle #x00000001 (bvsub a_ack!3710 b_ack!3708)))
(assert (bvsle #x00000002 (bvsub a_ack!3710 b_ack!3708)))
(assert (bvsle #x00000003 (bvsub a_ack!3710 b_ack!3708)))
(assert (bvsle #x00000004 (bvsub a_ack!3710 b_ack!3708)))
(assert (bvsle #x00000005 (bvsub a_ack!3710 b_ack!3708)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3709)
                           ((_ to_fp 11 53) c_ack!3709))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3709)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3709)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3709)
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           a!1))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!3709)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3709)
                                   a!3)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   a!2)))))
  (FPCHECK_FSUB_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4014000000000000) a!3)))))))

(check-sat)
(exit)
