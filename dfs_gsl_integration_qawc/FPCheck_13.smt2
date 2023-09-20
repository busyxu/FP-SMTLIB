(declare-fun limit_ack!200 () (_ BitVec 64))
(declare-fun a_ack!201 () (_ BitVec 64))
(declare-fun b_ack!196 () (_ BitVec 64))
(declare-fun epsabs_ack!198 () (_ BitVec 64))
(declare-fun epsrel_ack!199 () (_ BitVec 64))
(declare-fun c_ack!197 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!200)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!196) ((_ to_fp 11 53) a_ack!201))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!198) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!199)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!199)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!197) ((_ to_fp 11 53) a_ack!201))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!197) ((_ to_fp 11 53) b_ack!196))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!197))
                   ((_ to_fp 11 53) b_ack!196))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!201))
                 ((_ to_fp 11 53) a_ack!201))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!197))
                   ((_ to_fp 11 53) b_ack!196))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!201)))
         ((_ to_fp 11 53) a_ack!201))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!197))
                           ((_ to_fp 11 53) b_ack!196))
                   ((_ to_fp 11 53) a_ack!201))))
  (FPCHECK_FDIV_UNDERFLOW
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!196)
            ((_ to_fp 11 53) a_ack!201)))))

(check-sat)
(exit)
