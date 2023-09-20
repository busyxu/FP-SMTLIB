(declare-fun a_ack!3358 () (_ BitVec 32))
(declare-fun b_ack!3356 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!3357 () (_ BitVec 64))
(assert (not (bvslt a_ack!3358 #x00000000)))
(assert (not (bvslt b_ack!3356 #x00000000)))
(assert (not (= #x00000000 a_ack!3358)))
(assert (not (= #x00000001 a_ack!3358)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3356 a_ack!3358)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3356)))
(assert (bvslt b_ack!3356 a_ack!3358))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3358 b_ack!3356) #x00000001))))
(assert (bvslt b_ack!3356 (bvsub a_ack!3358 b_ack!3356)))
(assert (not (bvslt #x00000000 b_ack!3356)))
(assert (bvsle #x00000001 (bvsub a_ack!3358 b_ack!3356)))
(assert (bvsle #x00000002 (bvsub a_ack!3358 b_ack!3356)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!3357)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3357)
                                   ((_ to_fp 11 53) c_ack!3357))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53) c_ack!3357)))))

(check-sat)
(exit)
