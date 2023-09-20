(declare-fun b_ack!28 () (_ BitVec 32))
(declare-fun a_ack!29 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult a_ack!29 b_ack!28)))
(assert (not (= b_ack!28 a_ack!29)))
(assert (not (= #x00000000 b_ack!28)))
(assert (not (bvule a_ack!29 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!28) a_ack!29))
(assert (not (bvult (bvsub a_ack!29 (bvsub a_ack!29 b_ack!28)) #x00000040)))
(assert (not (bvult a_ack!29 (bvsub a_ack!29 b_ack!28))))
(assert (not (= (bvsub a_ack!29 b_ack!28) a_ack!29)))
(assert (not (= #x00000000 (bvsub a_ack!29 b_ack!28))))
(assert (not (bvult a_ack!29 (bvmul #x00000002 (bvsub a_ack!29 b_ack!28)))))
(assert (not (bvule a_ack!29 #x000000aa)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!29)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
