(declare-fun limit_ack!702 () (_ BitVec 64))
(declare-fun a_ack!703 () (_ BitVec 64))
(declare-fun b_ack!699 () (_ BitVec 64))
(declare-fun epsabs_ack!701 () (_ BitVec 64))
(declare-fun c_ack!700 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!702)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!699) ((_ to_fp 11 53) a_ack!703)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!701)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!700) ((_ to_fp 11 53) a_ack!703))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!700) ((_ to_fp 11 53) b_ack!699))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!700))
                   ((_ to_fp 11 53) a_ack!703))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!699))
                 ((_ to_fp 11 53) b_ack!699))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!700))
                   ((_ to_fp 11 53) a_ack!703))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!699)))
         ((_ to_fp 11 53) b_ack!699))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!703 b_ack!699))

(check-sat)
(exit)
