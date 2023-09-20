(declare-fun limit_ack!3946 () (_ BitVec 64))
(declare-fun a_ack!3947 () (_ BitVec 64))
(declare-fun b_ack!3943 () (_ BitVec 64))
(declare-fun epsabs_ack!3945 () (_ BitVec 64))
(declare-fun c_ack!3944 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3946)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3943) ((_ to_fp 11 53) a_ack!3947)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3945)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3944) ((_ to_fp 11 53) a_ack!3947))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3944) ((_ to_fp 11 53) b_ack!3943))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3944))
                   ((_ to_fp 11 53) a_ack!3947))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3943))
                 ((_ to_fp 11 53) b_ack!3943))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3944))
                   ((_ to_fp 11 53) a_ack!3947))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3943)))
         ((_ to_fp 11 53) b_ack!3943))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!3944))
                           ((_ to_fp 11 53) a_ack!3947))
                   ((_ to_fp 11 53) b_ack!3943))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3947)
                                   ((_ to_fp 11 53) b_ack!3943))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3947)
                  ((_ to_fp 11 53) b_ack!3943)))
  #x3fd9f95df119fd62))

(check-sat)
(exit)
