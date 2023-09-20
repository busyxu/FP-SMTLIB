(declare-fun b_ack!32 () (_ BitVec 32))
(declare-fun a_ack!33 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult a_ack!33 b_ack!32)))
(assert (not (= b_ack!32 a_ack!33)))
(assert (not (= #x00000000 b_ack!32)))
(assert (not (bvule a_ack!33 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!32) a_ack!33))
(assert (not (bvult (bvsub a_ack!33 (bvsub a_ack!33 b_ack!32)) #x00000040)))
(assert (not (bvult a_ack!33 (bvsub a_ack!33 b_ack!32))))
(assert (not (= (bvsub a_ack!33 b_ack!32) a_ack!33)))
(assert (not (= #x00000000 (bvsub a_ack!33 b_ack!32))))
(assert (not (bvult a_ack!33 (bvmul #x00000002 (bvsub a_ack!33 b_ack!32)))))
(assert (not (bvule a_ack!33 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!33)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!33)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x4000000000000000))

(check-sat)
(exit)
