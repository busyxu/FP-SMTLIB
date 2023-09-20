(declare-fun b_ack!588 () (_ BitVec 32))
(declare-fun a_ack!589 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!588 #x00000000)))
(assert (not (bvslt a_ack!589 #x00000000)))
(assert (not (bvslt b_ack!588 a_ack!589)))
(assert (not (bvult b_ack!588 a_ack!589)))
(assert (not (= a_ack!589 b_ack!588)))
(assert (not (= #x00000000 a_ack!589)))
(assert (not (bvule b_ack!588 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!589) b_ack!588))
(assert (not (bvult (bvsub b_ack!588 (bvsub b_ack!588 a_ack!589)) #x00000040)))
(assert (not (bvult b_ack!588 (bvsub b_ack!588 a_ack!589))))
(assert (not (= (bvsub b_ack!588 a_ack!589) b_ack!588)))
(assert (not (= #x00000000 (bvsub b_ack!588 a_ack!589))))
(assert (bvult b_ack!588 (bvmul #x00000002 (bvsub b_ack!588 a_ack!589))))
(assert (not (bvule b_ack!588 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!588)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!588)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!588)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!588)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_UNDERFLOW #x40852429b6c30b05 a!1)))

(check-sat)
(exit)
