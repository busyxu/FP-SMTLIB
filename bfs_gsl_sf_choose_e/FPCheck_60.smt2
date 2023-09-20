(declare-fun b_ack!174 () (_ BitVec 32))
(declare-fun a_ack!175 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult a_ack!175 b_ack!174)))
(assert (not (= b_ack!174 a_ack!175)))
(assert (not (= #x00000000 b_ack!174)))
(assert (not (bvule a_ack!175 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!174) a_ack!175))
(assert (not (bvult (bvsub a_ack!175 (bvsub a_ack!175 b_ack!174)) #x00000040)))
(assert (not (bvult a_ack!175 (bvsub a_ack!175 b_ack!174))))
(assert (not (= (bvsub a_ack!175 b_ack!174) a_ack!175)))
(assert (not (= #x00000000 (bvsub a_ack!175 b_ack!174))))
(assert (not (bvult a_ack!175 (bvmul #x00000002 (bvsub a_ack!175 b_ack!174)))))
(assert (not (bvule a_ack!175 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!175)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!175)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!175)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!175)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_OVERFLOW #x40852429b6c30b05 a!1)))

(check-sat)
(exit)
