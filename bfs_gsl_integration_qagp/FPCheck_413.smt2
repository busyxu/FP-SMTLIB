(declare-fun limit_ack!6194 () (_ BitVec 64))
(declare-fun epsabs_ack!6199 () (_ BitVec 64))
(declare-fun a_ack!6200 () (_ BitVec 64))
(declare-fun x1_ack!6195 () (_ BitVec 64))
(declare-fun x2_ack!6196 () (_ BitVec 64))
(declare-fun x3_ack!6197 () (_ BitVec 64))
(declare-fun b_ack!6198 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6194)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6199)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6195) ((_ to_fp 11 53) a_ack!6200))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6196) ((_ to_fp 11 53) x1_ack!6195))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6197) ((_ to_fp 11 53) x2_ack!6196))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6198) ((_ to_fp 11 53) x3_ack!6197))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6200)
                                   ((_ to_fp 11 53) x1_ack!6195))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6195)
                  ((_ to_fp 11 53) a_ack!6200)))
  #x3fe2021b401fc120))

(check-sat)
(exit)
