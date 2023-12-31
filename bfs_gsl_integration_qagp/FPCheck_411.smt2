(declare-fun limit_ack!6166 () (_ BitVec 64))
(declare-fun epsabs_ack!6171 () (_ BitVec 64))
(declare-fun a_ack!6172 () (_ BitVec 64))
(declare-fun x1_ack!6167 () (_ BitVec 64))
(declare-fun x2_ack!6168 () (_ BitVec 64))
(declare-fun x3_ack!6169 () (_ BitVec 64))
(declare-fun b_ack!6170 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6166)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6171)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6167) ((_ to_fp 11 53) a_ack!6172))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6168) ((_ to_fp 11 53) x1_ack!6167))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6169) ((_ to_fp 11 53) x2_ack!6168))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6170) ((_ to_fp 11 53) x3_ack!6169))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6172)
                                   ((_ to_fp 11 53) x1_ack!6167))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6167)
                  ((_ to_fp 11 53) a_ack!6172)))
  #x3fe2021b401fc120))

(check-sat)
(exit)
