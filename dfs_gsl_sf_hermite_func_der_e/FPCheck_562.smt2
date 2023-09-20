(declare-fun a_ack!3370 () (_ BitVec 32))
(declare-fun b_ack!3368 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!3369 () (_ BitVec 64))
(assert (not (bvslt a_ack!3370 #x00000000)))
(assert (not (bvslt b_ack!3368 #x00000000)))
(assert (not (= #x00000000 a_ack!3370)))
(assert (not (= #x00000001 a_ack!3370)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3368 a_ack!3370)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3368)))
(assert (bvslt b_ack!3368 a_ack!3370))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3370 b_ack!3368) #x00000001))))
(assert (bvslt b_ack!3368 (bvsub a_ack!3370 b_ack!3368)))
(assert (not (bvslt #x00000000 b_ack!3368)))
(assert (bvsle #x00000001 (bvsub a_ack!3370 b_ack!3368)))
(assert (bvsle #x00000002 (bvsub a_ack!3370 b_ack!3368)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!3369)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3369)
                                   ((_ to_fp 11 53) c_ack!3369))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53) c_ack!3369)))))

(check-sat)
(exit)
