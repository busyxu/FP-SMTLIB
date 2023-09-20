(declare-fun limit_ack!170 () (_ BitVec 64))
(declare-fun a_ack!171 () (_ BitVec 64))
(declare-fun b_ack!166 () (_ BitVec 64))
(declare-fun epsabs_ack!168 () (_ BitVec 64))
(declare-fun epsrel_ack!169 () (_ BitVec 64))
(declare-fun c_ack!167 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!170)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!166) ((_ to_fp 11 53) a_ack!171))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!168) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!169)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!169)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!167) ((_ to_fp 11 53) a_ack!171))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!167) ((_ to_fp 11 53) b_ack!166))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!167))
                   ((_ to_fp 11 53) b_ack!166))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!171))
                 ((_ to_fp 11 53) a_ack!171))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!167))
                   ((_ to_fp 11 53) b_ack!166))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!171)))
         ((_ to_fp 11 53) a_ack!171))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!166 a_ack!171))

(check-sat)
(exit)
