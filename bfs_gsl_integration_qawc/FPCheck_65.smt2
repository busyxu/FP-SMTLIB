(declare-fun limit_ack!825 () (_ BitVec 64))
(declare-fun a_ack!826 () (_ BitVec 64))
(declare-fun b_ack!821 () (_ BitVec 64))
(declare-fun epsabs_ack!823 () (_ BitVec 64))
(declare-fun epsrel_ack!824 () (_ BitVec 64))
(declare-fun c_ack!822 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!825)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!821) ((_ to_fp 11 53) a_ack!826)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!823) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!824)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!824)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!822) ((_ to_fp 11 53) a_ack!826))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!822) ((_ to_fp 11 53) b_ack!821))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!822))
                   ((_ to_fp 11 53) a_ack!826))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!821))
                 ((_ to_fp 11 53) b_ack!821))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!822))
                   ((_ to_fp 11 53) a_ack!826))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!821)))
         ((_ to_fp 11 53) b_ack!821))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!826 b_ack!821))

(check-sat)
(exit)
