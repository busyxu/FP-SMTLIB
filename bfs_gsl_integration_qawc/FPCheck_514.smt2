(declare-fun limit_ack!6848 () (_ BitVec 64))
(declare-fun a_ack!6849 () (_ BitVec 64))
(declare-fun b_ack!6844 () (_ BitVec 64))
(declare-fun epsabs_ack!6846 () (_ BitVec 64))
(declare-fun epsrel_ack!6847 () (_ BitVec 64))
(declare-fun c_ack!6845 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6848)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6844) ((_ to_fp 11 53) a_ack!6849)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6846) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6847)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6847)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6845) ((_ to_fp 11 53) a_ack!6849))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6845) ((_ to_fp 11 53) b_ack!6844))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6845))
                   ((_ to_fp 11 53) a_ack!6849))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6844))
                 ((_ to_fp 11 53) b_ack!6844))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6845))
                   ((_ to_fp 11 53) a_ack!6849))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6844)))
         ((_ to_fp 11 53) b_ack!6844))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6845))
                           ((_ to_fp 11 53) a_ack!6849))
                   ((_ to_fp 11 53) b_ack!6844))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6849)
                                   ((_ to_fp 11 53) b_ack!6844))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6849)
                                   ((_ to_fp 11 53) b_ack!6844)))
                   ((_ to_fp 11 53) #x3fd9f95df119fd62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6844)
                                   ((_ to_fp 11 53) a_ack!6849)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
