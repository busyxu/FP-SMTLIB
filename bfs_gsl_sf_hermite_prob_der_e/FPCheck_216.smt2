(declare-fun b_ack!1008 () (_ BitVec 32))
(declare-fun a_ack!1009 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1008 #x00000000)))
(assert (not (bvslt a_ack!1009 #x00000000)))
(assert (not (bvslt b_ack!1008 a_ack!1009)))
(assert (not (bvult b_ack!1008 a_ack!1009)))
(assert (not (= a_ack!1009 b_ack!1008)))
(assert (not (= #x00000000 a_ack!1009)))
(assert (not (bvule b_ack!1008 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 a_ack!1009) b_ack!1008)))
(assert (not (bvult (bvsub b_ack!1008 a_ack!1009) #x00000040)))
(assert (not (bvult b_ack!1008 a_ack!1009)))
(assert (not (= a_ack!1009 b_ack!1008)))
(assert (not (= #x00000000 a_ack!1009)))
(assert (bvult b_ack!1008 (bvmul #x00000002 a_ack!1009)))
(assert (not (bvule b_ack!1008 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1008)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    #x3feffffffffff950
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) #x40852429b6c30b05) a!1))))

(check-sat)
(exit)
