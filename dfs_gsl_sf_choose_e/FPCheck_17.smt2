(declare-fun b_ack!44 () (_ BitVec 32))
(declare-fun a_ack!45 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult a_ack!45 b_ack!44)))
(assert (not (= b_ack!44 a_ack!45)))
(assert (not (= #x00000000 b_ack!44)))
(assert (not (bvule a_ack!45 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!44) a_ack!45))
(assert (not (bvult (bvsub a_ack!45 (bvsub a_ack!45 b_ack!44)) #x00000040)))
(assert (not (bvult a_ack!45 (bvsub a_ack!45 b_ack!44))))
(assert (not (= (bvsub a_ack!45 b_ack!44) a_ack!45)))
(assert (not (= #x00000000 (bvsub a_ack!45 b_ack!44))))
(assert (not (bvult a_ack!45 (bvmul #x00000002 (bvsub a_ack!45 b_ack!44)))))
(assert (not (bvule a_ack!45 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!45)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!45)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!45)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!45)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
