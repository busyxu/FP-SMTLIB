(declare-fun a_ack!3256 () (_ BitVec 32))
(declare-fun b_ack!3254 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!3255 () (_ BitVec 64))
(assert (not (bvslt a_ack!3256 #x00000000)))
(assert (not (bvslt b_ack!3254 #x00000000)))
(assert (not (= #x00000000 a_ack!3256)))
(assert (not (= #x00000001 a_ack!3256)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3254 a_ack!3256)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3254)))
(assert (bvslt b_ack!3254 a_ack!3256))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3256 b_ack!3254) #x00000001))))
(assert (bvslt b_ack!3254 (bvsub a_ack!3256 b_ack!3254)))
(assert (not (bvslt #x00000000 b_ack!3254)))
(assert (bvsle #x00000001 (bvsub a_ack!3256 b_ack!3254)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!3255)
          ((_ to_fp 11 53) c_ack!3255))
  #x3ff0000000000000))

(check-sat)
(exit)
