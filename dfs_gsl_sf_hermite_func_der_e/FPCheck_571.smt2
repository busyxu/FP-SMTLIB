(declare-fun a_ack!3430 () (_ BitVec 32))
(declare-fun b_ack!3428 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!3429 () (_ BitVec 64))
(assert (not (bvslt a_ack!3430 #x00000000)))
(assert (not (bvslt b_ack!3428 #x00000000)))
(assert (not (= #x00000000 a_ack!3430)))
(assert (not (= #x00000001 a_ack!3430)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3428 a_ack!3430)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3428)))
(assert (bvslt b_ack!3428 a_ack!3430))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3430 b_ack!3428) #x00000001))))
(assert (bvslt b_ack!3428 (bvsub a_ack!3430 b_ack!3428)))
(assert (not (bvslt #x00000000 b_ack!3428)))
(assert (bvsle #x00000001 (bvsub a_ack!3430 b_ack!3428)))
(assert (bvsle #x00000002 (bvsub a_ack!3430 b_ack!3428)))
(assert (bvsle #x00000003 (bvsub a_ack!3430 b_ack!3428)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!3429)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3429)
                                   ((_ to_fp 11 53) c_ack!3429))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY
    c_ack!3429
    (fp.sub roundNearestTiesToEven
            a!1
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) c_ack!3429))))))

(check-sat)
(exit)
