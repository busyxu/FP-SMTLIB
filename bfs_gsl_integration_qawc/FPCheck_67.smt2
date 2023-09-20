(declare-fun limit_ack!849 () (_ BitVec 64))
(declare-fun a_ack!850 () (_ BitVec 64))
(declare-fun b_ack!845 () (_ BitVec 64))
(declare-fun epsabs_ack!847 () (_ BitVec 64))
(declare-fun epsrel_ack!848 () (_ BitVec 64))
(declare-fun c_ack!846 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!849)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!845) ((_ to_fp 11 53) a_ack!850)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!847) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!848)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!848)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!846) ((_ to_fp 11 53) a_ack!850))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!846) ((_ to_fp 11 53) b_ack!845))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!846))
                   ((_ to_fp 11 53) a_ack!850))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!845))
                 ((_ to_fp 11 53) b_ack!845))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!846))
                   ((_ to_fp 11 53) a_ack!850))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!845)))
         ((_ to_fp 11 53) b_ack!845))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!850 b_ack!845))

(check-sat)
(exit)
