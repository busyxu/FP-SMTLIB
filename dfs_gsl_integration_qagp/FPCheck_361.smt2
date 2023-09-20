(declare-fun limit_ack!6146 () (_ BitVec 64))
(declare-fun epsabs_ack!6151 () (_ BitVec 64))
(declare-fun epsrel_ack!6145 () (_ BitVec 64))
(declare-fun a_ack!6152 () (_ BitVec 64))
(declare-fun x1_ack!6147 () (_ BitVec 64))
(declare-fun x2_ack!6148 () (_ BitVec 64))
(declare-fun x3_ack!6149 () (_ BitVec 64))
(declare-fun b_ack!6150 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6146)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6151) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6145)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6145)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6147) ((_ to_fp 11 53) a_ack!6152))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6148) ((_ to_fp 11 53) x1_ack!6147))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6149) ((_ to_fp 11 53) x2_ack!6148))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6150) ((_ to_fp 11 53) x3_ack!6149))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6152)
                                   ((_ to_fp 11 53) x1_ack!6147))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6147)
                                   ((_ to_fp 11 53) a_ack!6152)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6152)
                                   ((_ to_fp 11 53) x1_ack!6147)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
