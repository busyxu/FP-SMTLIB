(declare-fun b_ack!528 () (_ BitVec 32))
(declare-fun a_ack!529 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!528 #x00000000)))
(assert (not (bvslt a_ack!529 #x00000000)))
(assert (not (bvslt b_ack!528 a_ack!529)))
(assert (not (bvult b_ack!528 a_ack!529)))
(assert (not (= a_ack!529 b_ack!528)))
(assert (not (= #x00000000 a_ack!529)))
(assert (not (bvule b_ack!528 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 a_ack!529) b_ack!528)))
(assert (not (bvult (bvsub b_ack!528 a_ack!529) #x00000040)))
(assert (not (bvult b_ack!528 a_ack!529)))
(assert (not (= a_ack!529 b_ack!528)))
(assert (not (= #x00000000 a_ack!529)))
(assert (bvult b_ack!528 (bvmul #x00000002 a_ack!529)))
(assert (not (bvule b_ack!528 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!528)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!528)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x4000000000000000))

(check-sat)
(exit)
