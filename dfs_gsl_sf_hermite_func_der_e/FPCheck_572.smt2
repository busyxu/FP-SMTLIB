(declare-fun a_ack!3438 () (_ BitVec 32))
(declare-fun b_ack!3436 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!3437 () (_ BitVec 64))
(assert (not (bvslt a_ack!3438 #x00000000)))
(assert (not (bvslt b_ack!3436 #x00000000)))
(assert (not (= #x00000000 a_ack!3438)))
(assert (not (= #x00000001 a_ack!3438)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3436 a_ack!3438)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3436)))
(assert (bvslt b_ack!3436 a_ack!3438))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3438 b_ack!3436) #x00000001))))
(assert (bvslt b_ack!3436 (bvsub a_ack!3438 b_ack!3436)))
(assert (not (bvslt #x00000000 b_ack!3436)))
(assert (bvsle #x00000001 (bvsub a_ack!3438 b_ack!3436)))
(assert (bvsle #x00000002 (bvsub a_ack!3438 b_ack!3436)))
(assert (bvsle #x00000003 (bvsub a_ack!3438 b_ack!3436)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!3437)
                  ((_ to_fp 11 53) c_ack!3437))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
